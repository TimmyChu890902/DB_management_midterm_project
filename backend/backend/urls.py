from django.conf.urls import url
from myfilter import views

urlpatterns = [
    #url('10names', views.first10names),
    url('cups', views.all_cups),
    url('units', views.all_units),
    url('groups', views.all_groups),
    #url(r'^scoreboard/(?P<pk>\d+)$', views.test_scoreboard),
    
    #url('scoreboard/individual', views.score_update),
    url('liveScore', views.get_score),
    url('search/individual', views.get_individual),
    url('search/team', views.get_team),
    url('search/cup', views.get_cup),
    url('scoreboard/individual', views.score_update),
    url(r'^scoreboard/(?P<tar>\w+)$', views.get_scoreboard),
]