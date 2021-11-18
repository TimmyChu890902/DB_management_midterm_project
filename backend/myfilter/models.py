from django.db import models

# Create your models here.
class Archers(models.Model):
    a_id = models.IntegerField(primary_key=True)
    a_unit = models.TextField()
    a_name = models.TextField(unique=True)

    class Meta:
        db_table = 'Archer"."archers'

    def __str__(self):
        return self.a_name



class Cups(models.Model):
    cup_id = models.IntegerField(primary_key=True)
    cup_name = models.TextField()
    host = models.TextField()
    day = models.DateField()
    

    class Meta:
        db_table = 'Archer"."cups'

    def __str__(self):
        return self.cup_name


class Groups(models.Model):
    g_id = models.IntegerField(primary_key=True)
    g_name = models.TextField()
    

    class Meta:
        db_table = 'Archer"."groups'

    def __str__(self):
        return self.g_name



class Individuals(models.Model):
    i_id = models.IntegerField(primary_key=True)
    cup = models.ForeignKey('Cups', on_delete=models.CASCADE)#, related_name='individual_cup'_id
    g = models.ForeignKey('Groups', on_delete=models.CASCADE)#, related_name='individual_group'_id
    target = models.TextField()
    a = models.ForeignKey('Archers', on_delete=models.CASCADE)#, related_name='archer'_id
    

    class Meta:
        db_table = 'Archer"."individuals'

    def __str__(self):
        return self.target



class Teams(models.Model):
    t_id = models.IntegerField(primary_key=True)
    cup = models.ForeignKey('Cups', on_delete=models.CASCADE, related_name='team_cup')
    t_name = models.TextField()
    i1 = models.ForeignKey('Individuals', on_delete=models.CASCADE, related_name='individual1')
    i2 = models.ForeignKey('Individuals', on_delete=models.CASCADE, related_name='individual2')
    i3 = models.ForeignKey('Individuals', on_delete=models.CASCADE, related_name='individual3')


    class Meta:
        db_table = 'Archer"."teams'

    def __str__(self):
        return self.t_id


class Individual_scores(models.Model):
    #is_id = models.IntegerField(primary_key=True)
    i = models.ForeignKey('Individuals', on_delete=models.CASCADE, primary_key=True)
    tenx = models.IntegerField()
    x = models.IntegerField()
    total = models.IntegerField()
    set = models.IntegerField()
    

    class Meta:
        db_table = 'Archer"."individual_scores'

    def __str__(self):
        return self.i


class Individual_ranks(models.Model):
    #ir_id = models.IntegerField(primary_key=True)
    i = models.ForeignKey('Individuals', on_delete=models.CASCADE, primary_key=True)
    tenx = models.IntegerField()
    x = models.IntegerField()
    total = models.IntegerField()
    rank = models.IntegerField()
    

    class Meta:
        db_table = 'Archer"."individual_ranks'

    def __str__(self):
        return self.i



class Team_scores(models.Model):
    #is_id = models.IntegerField(primary_key=True)
    t = models.ForeignKey('Teams', on_delete=models.CASCADE, primary_key=True)
    score_1 = models.IntegerField()
    score_2 = models.IntegerField()
    score_3 = models.IntegerField()
    tenx = models.IntegerField()
    x = models.IntegerField()
    total = models.IntegerField()
    

    class Meta:
        db_table = 'Archer"."team_scores'

    def __str__(self):
        return self.t



class Team_ranks(models.Model):
    #ir_id = models.IntegerField(primary_key=True)
    t = models.ForeignKey('Teams', on_delete=models.CASCADE, primary_key=True)
    tenx = models.IntegerField()
    x = models.IntegerField()
    total = models.IntegerField()
    rank = models.IntegerField()
    

    class Meta:
        db_table = 'Archer"."team_ranks'

    def __str__(self):
        return self.t


#from myfilter.models import Cups, Groups, Archers, Individuals, Individual_ranks, Individual_scores, Teams, Team_scores, Team_ranks