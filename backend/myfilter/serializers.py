from rest_framework import serializers
from myfilter.models import Archers, Cups, Groups, Individual_scores

class ArchersSerializer(serializers.ModelSerializer):
    class Meta:
        model = Archers
        fields = '__all__'

class CupsSerializer(serializers.ModelSerializer):
    class Meta:
        model = Cups
        fields = '__all__'


class GroupsSerializer(serializers.ModelSerializer):
    class Meta:
        model = Groups
        fields = '__all__'


class ScoreboardSerializer(serializers.ModelSerializer):
    class Meta:
        model = Individual_scores
        fields = (
                  'tenx',
                  'x',
                  'total',
                  'set')


# class ScoreupdateSerializer(serializers.ModelSerializer):
#     class Meta:
#         model = Individual_scores
#         fields = (
#                   'target',
#                   'tenX',
#                   'X',
#                   'score',)