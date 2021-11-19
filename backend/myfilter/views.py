from django.shortcuts import render
from rest_framework import status
from rest_framework.decorators import api_view
from rest_framework.response import Response
from django.db.models import Q

from django.http.response import JsonResponse
from rest_framework.parsers import JSONParser 

from myfilter.models import Archers, Cups, Groups, Individual_scores, Individuals, Individual_ranks, Teams, Team_scores, Team_ranks
from myfilter.serializers import CupsSerializer, GroupsSerializer, ScoreboardSerializer

from django.db.models import Count
import datetime

# Create your views here.

# @api_view(['GET'])
# def first10names(request):
#     if request.method == 'GET':
#         archers = Archers.objects.all()
#         serializer = ArchersSerializer(archers, many=True)
#         return Response(serializer.data, status=status.HTTP_200_OK)

@api_view(['GET'])
def all_units(request):
    if request.method == 'GET':
        units = Archers.objects.all().values_list('a_unit', flat=True).distinct()
        lst = list(units)
        result = []
        for element in lst:
            data = {}
            data['unit'] = element
            result.append(data)

        return Response(result, status=status.HTTP_200_OK)



@api_view(['GET'])
def all_cups(request):
    if request.method == 'GET':
        cups = Cups.objects.values('cup_name').order_by('-cup_id')
        lst = []
        for ele in cups:
            data = {}
            data['unit'] = ele['cup_name']
            lst.append(data)
        return Response(lst, status=status.HTTP_200_OK)


# @api_view(['GET'])
# def all_cups(request):
#     if request.method == 'GET':
#         cups = Cups.objects.all()
#         serializer = CupsSerializer(cups, many=True)
#         return Response(serializer.data, status=status.HTTP_200_OK)


@api_view(['GET'])
def all_groups(request):
    if request.method == 'GET':
        groups = Groups.objects.all()
        serializer = GroupsSerializer(groups, many=True)
        return Response(serializer.data, status=status.HTTP_200_OK)





@api_view(['POST'])
def get_scoreboard(request):
    if 'application/json' not in request.content_type:
        return Response("Content type should be 'application/json'.", status=status.HTTP_400_BAD_REQUEST)

    if request.method == 'POST':
        try:
            tar = request.data['target']
            # = 1#"109椰林盃"
        except KeyError:
            return Response("1 parameter is all required.(target)", status=status.HTTP_400_BAD_REQUEST)

        x = Cups.objects.values('cup_id').order_by('cup_id')
        l = len(x)
        latest_cup = x[l-1]['cup_id']
        k = Individuals.objects.filter(cup_id = latest_cup-1, target = tar)
        if len(k) > 0:
            m = k.values('i_id')
            if len(m) > 0: 
                id = m[0]['i_id']
                b = Individual_scores.objects.filter(i_id = id)
                serializer = ScoreboardSerializer(b, many=True)
                return Response(serializer.data, status=status.HTTP_200_OK)
            else:#except Individual_scores.DoesNotExist: #bug
                data = {}
                result = []
                data['set'] = 0
                result.append(data)
                return Response(result, status=status.HTTP_200_OK)
        else:
            #result = []
            return Response({'message': 'The Individual does not exist'}, status=status.HTTP_404_NOT_FOUND) 
            
        







# @api_view(['GET'])
# def get_scoreboard(request, tar):
    
#     if request.method == 'GET':
#         x = Cups.objects.values('cup_id').order_by('cup_id')
#         l = len(x)
#         latest_cup = x[l-1]['cup_id']
#         k = Individuals.objects.filter(cup_id = latest_cup, target = tar)
#         if len(k) > 0:
#             try: 
#                 id = k.values('i_id')[0]['i_id']
#                 b = Individual_scores.objects.filter(i_id = id)
#                 serializer = ScoreboardSerializer(b, many=True)
#                 return Response(serializer.data, status=status.HTTP_200_OK)
#             except Individual_scores.DoesNotExist: #bug
#                 return Response({'message': 'The Individual does not exist'}, status=status.HTTP_404_NOT_FOUND) 
#         else:
#             #result = []
#             data = {}
#             data['set'] = 0
#             return Response(data, status=status.HTTP_200_OK)
        




@api_view(['POST'])
def get_score(request):
    if 'application/json' not in request.content_type:
        return Response("Content type should be 'application/json'.", status=status.HTTP_400_BAD_REQUEST)

    if request.method == 'POST':
        try:
            group = request.data['group']
            cup = 1#"108椰林盃"
        except KeyError:
            return Response("1 parameter is all required.(group)", status=status.HTTP_400_BAD_REQUEST)

    g = Groups.objects.filter(g_name=group).values('g_id')[0]['g_id']
    k = Individuals.objects.filter(g = g, cup = cup).values('i_id')
    l = list([])
    for i in k:
        l.append(i['i_id'])
    m1 = Individual_scores.objects.filter(i_id__in=l).values('tenx', 'x', 'total', 'i_id__a_id__a_unit', 'i_id__a_id__a_name').order_by('-total', '-tenx', '-x')
    key = 1
    result = []
    for element in m1:
        data = {}
        data['key'] = str(key)
        data['tenX'] = element['tenx']
        data['X'] = element['x']
        data['rank'] = key
        data['unit'] = element['i_id__a_id__a_unit']
        data['name'] = element['i_id__a_id__a_name']
        data['total'] = element['total']
        key += 1
        result.append(data)
    return Response(result, status=status.HTTP_200_OK)






@api_view(['POST'])
def get_cup(request):
    if 'application/json' not in request.content_type:
        return Response("Content type should be 'application/json'.", status=status.HTTP_400_BAD_REQUEST)

    if request.method == 'POST':
        try:
            cup = request.data['cup']
            group = request.data['group']
        except KeyError:
            return Response("2 parameters are all required.(cup, group)", status=status.HTTP_400_BAD_REQUEST)
    c = Cups.objects.filter(cup_name = cup).values('cup_id')[0]['cup_id']
    g = Groups.objects.filter(g_name = group).values('g_id')[0]['g_id']
    individual = Individuals.objects.filter(cup=c, g = g).values('i_id')
    
    if len(individual) == 0:
        return Response("無此選手資料", status=status.HTTP_404_NOT_FOUND)
    #individual_id = individual
    #comp = Individuals.objects.filter(a_id = archer_id).values('i_id')
    id = []
    for i in individual:
        id.append(i['i_id'])

    rank_data = Individuals.objects.filter(i_id__in=id).values('individual_scores__x', 'individual_scores__tenx', 'individual_scores__total', 'individual_ranks__rank', 'a__a_name', 'a__a_unit').order_by('individual_ranks__rank')
    key = 1
    result = []
    for element in rank_data:
        data = {}
        data['key'] = str(key)
        data['tenX'] = element['individual_scores__tenx']
        data['X'] = element['individual_scores__x']
        data['rank'] = element['individual_ranks__rank']
        data['unit'] = element['a__a_unit']
        data['name'] = element['a__a_name']
        data['total'] = element['individual_scores__total']
        key += 1
        result.append(data)
    return Response(result, status=status.HTTP_200_OK)#






@api_view(['POST'])
def get_individual(request):
    if 'application/json' not in request.content_type:
        return Response("Content type should be 'application/json'.", status=status.HTTP_400_BAD_REQUEST)

    if request.method == 'POST':
        try:
            unit = request.data['unit']
            name = request.data['name']
        except KeyError:
            return Response("2 parameters are all required.(unit, name)", status=status.HTTP_400_BAD_REQUEST)
    archer = Archers.objects.filter(a_name=name, a_unit = unit)
    
    if len(archer) == 0:
        return Response("無此選手資料", status=status.HTTP_404_NOT_FOUND)
    archer_id = archer.values('a_id')[0]['a_id']
    comp = Individuals.objects.filter(a_id = archer_id).values('i_id')
    id = []
    for i in comp:
        id.append(i['i_id'])

    score_data = Individuals.objects.filter(i_id__in=id).values('individual_scores__x', 'individual_scores__tenx', 'individual_scores__total', 'individual_ranks__rank', 'a__a_name', 'a__a_unit', 'cup__cup_name').order_by('i_id')
    key = 1
    result = []
    for element in score_data:
        data = {}
        data['key'] = str(key)
        data['tenX'] = element['individual_scores__tenx']
        data['X'] = element['individual_scores__x']
        data['rank'] = element['individual_ranks__rank']
        data['unit'] = element['a__a_unit']
        data['name'] = element['a__a_name']
        data['total'] = element['individual_scores__total']
        data['cup'] = element['cup__cup_name']
        key += 1
        result.append(data)
    return Response(result, status=status.HTTP_200_OK)#








@api_view(['POST'])
def get_team(request):
    if 'application/json' not in request.content_type:
        return Response("Content type should be 'application/json'.", status=status.HTTP_400_BAD_REQUEST)

    if request.method == 'POST':
        try:
            unit = request.data['unit']
            name = request.data['name']
        except KeyError:
            return Response("2 parameters are all required.(unit, name)", status=status.HTTP_400_BAD_REQUEST)
    archer = Archers.objects.filter(a_name=name, a_unit = unit)
    
    if len(archer) == 0:
        return Response("無此選手資料", status=status.HTTP_404_NOT_FOUND)
    archer_id = archer.values('a_id')[0]['a_id']
    comp = Individuals.objects.filter(a_id = archer_id).values('i_id')
    id = []
    for i in comp:
        id.append(i['i_id'])

    score_data = Teams.objects.filter(Q(i1__i_id__in = id)|Q(i2__i_id__in = id)|Q(i3__i_id__in = id))
    datas  = score_data.values('cup__cup_name', 't_name', 'i1__individual_scores__total', 'i1__a__a_name', 'i2__individual_scores__total', 'i2__a__a_name', 'i3__individual_scores__total', 'i3__a__a_name', 'team_ranks__rank').order_by('cup')
    key = 1
    result = []
    for element in datas:
        data = {}
        data['key'] = str(key)
        data['cup'] = element['cup__cup_name']
        data['name'] = element['t_name']
        data['p1_name'] = element['i1__a__a_name']
        data['score1'] = element['i1__individual_scores__total']
        data['p2_name'] = element['i2__a__a_name']
        data['score2'] = element['i2__individual_scores__total']
        data['p3_name'] = element['i3__a__a_name']
        data['score3'] = element['i3__individual_scores__total']
        data['total'] = data['score1'] + data['score2'] + data['score3']
        data['rank'] = element['team_ranks__rank']
        key += 1
        result.append(data)
    return Response(result, status=status.HTTP_200_OK)




@api_view(['POST'])
def score_update(request):
    if 'application/json' not in request.content_type:
        return Response("Content type should be 'application/json'.", status=status.HTTP_400_BAD_REQUEST)
    
    try:
        tar = request.data['target']
        tx = request.data['tenX']
        x = request.data['X']
        sc = request.data['score']
        cup = 3
    except KeyError:
        return Response("4 parameters are all required.(target,tenX,X,score)", status=status.HTTP_400_BAD_REQUEST)
    # if request.method == 'PUT':
    #     input_data = JSONParser().parse(request) 
    #     tutorial_serializer = TutorialSerializer(tutorial, data=input_data) 
    #     if tutorial_serializer.is_valid(): 
    #         tutorial_serializer.save() 
    #         return JsonResponse(tutorial_serializer.data) 
    #     return JsonResponse(tutorial_serializer.errors, status=status.HTTP_400_BAD_REQUEST) 
    individual = Individuals.objects.filter(cup_id = cup, target = tar)
    
    if len(individual) == 0:
        return Response("無此選手資料", status=status.HTTP_404_NOT_FOUND)


    i = Individuals.objects.filter(cup_id = cup, target = tar)
    individual_id = i.values('i_id')[0]['i_id']
    score_data = Individual_scores.objects.filter(i = individual_id)


    if len(score_data) == 0:
        add_data = Individual_scores(i = i[0], tenx = tx, x = x, set = 1, total = sc)
        add_data.save()
        return Response('data saved', status=status.HTTP_201_CREATED)
    elif score_data.values('set')[0]['set'] < 6:
        oset = score_data.values('set')[0]['set']
        otx = score_data.values('tenx')[0]['tenx']
        ox = score_data.values('x')[0]['x']
        otot= score_data.values('total')[0]['total']
        score_data.update(set = oset + 1, total = otot + sc, x = ox + x, tenx = tx + otx)
        return Response('data updated', status=status.HTTP_200_OK)
    else:
        return Response('cannot update(set = 6)', status=status.HTTP_400_BAD_REQUEST)



    #return Response(result, status=status.HTTP_200_OK)


#add_data = Individual_scores(i = i, tenx)