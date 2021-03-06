PGDMP                      
    y            Archer    13.4    13.4 ?    z           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            {           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            |           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            }           1262    24625    Archer    DATABASE     m   CREATE DATABASE "Archer" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'English_United Kingdom.1252';
    DROP DATABASE "Archer";
                postgres    false                        2615    24626    Archer    SCHEMA        CREATE SCHEMA "Archer";
    DROP SCHEMA "Archer";
                postgres    false            ?            1259    24627    archers    TABLE     ?   CREATE TABLE "Archer".archers (
    a_id integer NOT NULL,
    a_unit character varying(30) NOT NULL,
    a_name character varying(20) NOT NULL
);
    DROP TABLE "Archer".archers;
       Archer         heap    postgres    false    4            ?            1259    24643    cups    TABLE     ?   CREATE TABLE "Archer".cups (
    cup_id integer NOT NULL,
    cup_name character varying(10) NOT NULL,
    host character varying(10) NOT NULL,
    day date NOT NULL
);
    DROP TABLE "Archer".cups;
       Archer         heap    postgres    false    4            ?            1259    24635    groups    TABLE     U   CREATE TABLE "Archer".groups (
    g_id integer NOT NULL,
    g_name character(3)
);
    DROP TABLE "Archer".groups;
       Archer         heap    postgres    false    4            ?            1259    24712    individual_ranks    TABLE     ?   CREATE TABLE "Archer".individual_ranks (
    i_id integer NOT NULL,
    tenx integer NOT NULL,
    x integer NOT NULL,
    total integer NOT NULL,
    rank integer NOT NULL
);
 &   DROP TABLE "Archer".individual_ranks;
       Archer         heap    postgres    false    4            ?            1259    24697    individual_scores    TABLE     ?   CREATE TABLE "Archer".individual_scores (
    i_id integer NOT NULL,
    tenx integer NOT NULL,
    x integer NOT NULL,
    total integer NOT NULL,
    set integer NOT NULL
);
 '   DROP TABLE "Archer".individual_scores;
       Archer         heap    postgres    false    4            ?            1259    24651    individuals    TABLE     ?   CREATE TABLE "Archer".individuals (
    i_id integer NOT NULL,
    cup_id integer NOT NULL,
    g_id integer NOT NULL,
    target character varying(4) NOT NULL,
    a_id integer
);
 !   DROP TABLE "Archer".individuals;
       Archer         heap    postgres    false    4            ?            1259    24744 
   team_ranks    TABLE     ?   CREATE TABLE "Archer".team_ranks (
    t_id integer NOT NULL,
    tenx integer NOT NULL,
    x integer NOT NULL,
    total integer NOT NULL,
    rank integer NOT NULL
);
     DROP TABLE "Archer".team_ranks;
       Archer         heap    postgres    false    4            ?            1259    24702    team_scores    TABLE     ?   CREATE TABLE "Archer".team_scores (
    t_id integer NOT NULL,
    score_1 integer NOT NULL,
    score_2 integer NOT NULL,
    score_3 integer NOT NULL,
    tenx integer NOT NULL,
    x integer NOT NULL,
    total integer NOT NULL
);
 !   DROP TABLE "Archer".team_scores;
       Archer         heap    postgres    false    4            ?            1259    24669    teams    TABLE     ?   CREATE TABLE "Archer".teams (
    t_id integer NOT NULL,
    cup_id integer NOT NULL,
    t_name character varying(30) NOT NULL,
    i1_id integer NOT NULL,
    i2_id integer NOT NULL,
    i3_id integer NOT NULL
);
    DROP TABLE "Archer".teams;
       Archer         heap    postgres    false    4            ?            1259    32876 
   auth_group    TABLE     f   CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);
    DROP TABLE public.auth_group;
       public         heap    postgres    false            ?            1259    32874    auth_group_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.auth_group_id_seq;
       public          postgres    false    217            ~           0    0    auth_group_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;
          public          postgres    false    216            ?            1259    32886    auth_group_permissions    TABLE     ?   CREATE TABLE public.auth_group_permissions (
    id bigint NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);
 *   DROP TABLE public.auth_group_permissions;
       public         heap    postgres    false            ?            1259    32884    auth_group_permissions_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.auth_group_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.auth_group_permissions_id_seq;
       public          postgres    false    219                       0    0    auth_group_permissions_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;
          public          postgres    false    218            ?            1259    32868    auth_permission    TABLE     ?   CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);
 #   DROP TABLE public.auth_permission;
       public         heap    postgres    false            ?            1259    32866    auth_permission_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.auth_permission_id_seq;
       public          postgres    false    215            ?           0    0    auth_permission_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;
          public          postgres    false    214            ?            1259    32894 	   auth_user    TABLE     ?  CREATE TABLE public.auth_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(150) NOT NULL,
    first_name character varying(150) NOT NULL,
    last_name character varying(150) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL
);
    DROP TABLE public.auth_user;
       public         heap    postgres    false            ?            1259    32904    auth_user_groups    TABLE     ~   CREATE TABLE public.auth_user_groups (
    id bigint NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);
 $   DROP TABLE public.auth_user_groups;
       public         heap    postgres    false            ?            1259    32902    auth_user_groups_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.auth_user_groups_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.auth_user_groups_id_seq;
       public          postgres    false    223            ?           0    0    auth_user_groups_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.auth_user_groups_id_seq OWNED BY public.auth_user_groups.id;
          public          postgres    false    222            ?            1259    32892    auth_user_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.auth_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.auth_user_id_seq;
       public          postgres    false    221            ?           0    0    auth_user_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.auth_user_id_seq OWNED BY public.auth_user.id;
          public          postgres    false    220            ?            1259    32912    auth_user_user_permissions    TABLE     ?   CREATE TABLE public.auth_user_user_permissions (
    id bigint NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);
 .   DROP TABLE public.auth_user_user_permissions;
       public         heap    postgres    false            ?            1259    32910 !   auth_user_user_permissions_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.auth_user_user_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.auth_user_user_permissions_id_seq;
       public          postgres    false    225            ?           0    0 !   auth_user_user_permissions_id_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public.auth_user_user_permissions_id_seq OWNED BY public.auth_user_user_permissions.id;
          public          postgres    false    224            ?            1259    32972    django_admin_log    TABLE     ?  CREATE TABLE public.django_admin_log (
    id integer NOT NULL,
    action_time timestamp with time zone NOT NULL,
    object_id text,
    object_repr character varying(200) NOT NULL,
    action_flag smallint NOT NULL,
    change_message text NOT NULL,
    content_type_id integer,
    user_id integer NOT NULL,
    CONSTRAINT django_admin_log_action_flag_check CHECK ((action_flag >= 0))
);
 $   DROP TABLE public.django_admin_log;
       public         heap    postgres    false            ?            1259    32970    django_admin_log_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.django_admin_log_id_seq;
       public          postgres    false    227            ?           0    0    django_admin_log_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;
          public          postgres    false    226            ?            1259    32858    django_content_type    TABLE     ?   CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);
 '   DROP TABLE public.django_content_type;
       public         heap    postgres    false            ?            1259    32856    django_content_type_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.django_content_type_id_seq;
       public          postgres    false    213            ?           0    0    django_content_type_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;
          public          postgres    false    212            ?            1259    32847    django_migrations    TABLE     ?   CREATE TABLE public.django_migrations (
    id bigint NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);
 %   DROP TABLE public.django_migrations;
       public         heap    postgres    false            ?            1259    32845    django_migrations_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.django_migrations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.django_migrations_id_seq;
       public          postgres    false    211            ?           0    0    django_migrations_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;
          public          postgres    false    210            ?           2604    32879    auth_group id    DEFAULT     n   ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);
 <   ALTER TABLE public.auth_group ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    217    216    217            ?           2604    32889    auth_group_permissions id    DEFAULT     ?   ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);
 H   ALTER TABLE public.auth_group_permissions ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    218    219    219            ?           2604    32871    auth_permission id    DEFAULT     x   ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);
 A   ALTER TABLE public.auth_permission ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    215    214    215            ?           2604    32897    auth_user id    DEFAULT     l   ALTER TABLE ONLY public.auth_user ALTER COLUMN id SET DEFAULT nextval('public.auth_user_id_seq'::regclass);
 ;   ALTER TABLE public.auth_user ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    220    221    221            ?           2604    32907    auth_user_groups id    DEFAULT     z   ALTER TABLE ONLY public.auth_user_groups ALTER COLUMN id SET DEFAULT nextval('public.auth_user_groups_id_seq'::regclass);
 B   ALTER TABLE public.auth_user_groups ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    223    222    223            ?           2604    32915    auth_user_user_permissions id    DEFAULT     ?   ALTER TABLE ONLY public.auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_user_user_permissions_id_seq'::regclass);
 L   ALTER TABLE public.auth_user_user_permissions ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    225    224    225            ?           2604    32975    django_admin_log id    DEFAULT     z   ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);
 B   ALTER TABLE public.django_admin_log ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    227    226    227            ?           2604    32861    django_content_type id    DEFAULT     ?   ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);
 E   ALTER TABLE public.django_content_type ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    212    213    213                       2604    32850    django_migrations id    DEFAULT     |   ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);
 C   ALTER TABLE public.django_migrations ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    210    211    211            ]          0    24627    archers 
   TABLE DATA           9   COPY "Archer".archers (a_id, a_unit, a_name) FROM stdin;
    Archer          postgres    false    201   ??       _          0    24643    cups 
   TABLE DATA           =   COPY "Archer".cups (cup_id, cup_name, host, day) FROM stdin;
    Archer          postgres    false    203   z?       ^          0    24635    groups 
   TABLE DATA           0   COPY "Archer".groups (g_id, g_name) FROM stdin;
    Archer          postgres    false    202   ִ       d          0    24712    individual_ranks 
   TABLE DATA           H   COPY "Archer".individual_ranks (i_id, tenx, x, total, rank) FROM stdin;
    Archer          postgres    false    208   F?       b          0    24697    individual_scores 
   TABLE DATA           H   COPY "Archer".individual_scores (i_id, tenx, x, total, set) FROM stdin;
    Archer          postgres    false    206   J?       `          0    24651    individuals 
   TABLE DATA           I   COPY "Archer".individuals (i_id, cup_id, g_id, target, a_id) FROM stdin;
    Archer          postgres    false    204   ??       e          0    24744 
   team_ranks 
   TABLE DATA           B   COPY "Archer".team_ranks (t_id, tenx, x, total, rank) FROM stdin;
    Archer          postgres    false    209   ??       c          0    24702    team_scores 
   TABLE DATA           X   COPY "Archer".team_scores (t_id, score_1, score_2, score_3, tenx, x, total) FROM stdin;
    Archer          postgres    false    207   ??       a          0    24669    teams 
   TABLE DATA           L   COPY "Archer".teams (t_id, cup_id, t_name, i1_id, i2_id, i3_id) FROM stdin;
    Archer          postgres    false    205   ??       m          0    32876 
   auth_group 
   TABLE DATA           .   COPY public.auth_group (id, name) FROM stdin;
    public          postgres    false    217   ??       o          0    32886    auth_group_permissions 
   TABLE DATA           M   COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
    public          postgres    false    219   ??       k          0    32868    auth_permission 
   TABLE DATA           N   COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
    public          postgres    false    215   ??       q          0    32894 	   auth_user 
   TABLE DATA           ?   COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
    public          postgres    false    221   ??       s          0    32904    auth_user_groups 
   TABLE DATA           A   COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
    public          postgres    false    223   ?       u          0    32912    auth_user_user_permissions 
   TABLE DATA           P   COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
    public          postgres    false    225   !?       w          0    32972    django_admin_log 
   TABLE DATA           ?   COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
    public          postgres    false    227   >?       i          0    32858    django_content_type 
   TABLE DATA           C   COPY public.django_content_type (id, app_label, model) FROM stdin;
    public          postgres    false    213   [?       g          0    32847    django_migrations 
   TABLE DATA           C   COPY public.django_migrations (id, app, name, applied) FROM stdin;
    public          postgres    false    211   x?       ?           0    0    auth_group_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);
          public          postgres    false    216            ?           0    0    auth_group_permissions_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);
          public          postgres    false    218            ?           0    0    auth_permission_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.auth_permission_id_seq', 1, false);
          public          postgres    false    214            ?           0    0    auth_user_groups_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 1, false);
          public          postgres    false    222            ?           0    0    auth_user_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.auth_user_id_seq', 1, false);
          public          postgres    false    220            ?           0    0 !   auth_user_user_permissions_id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);
          public          postgres    false    224            ?           0    0    django_admin_log_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.django_admin_log_id_seq', 1, false);
          public          postgres    false    226            ?           0    0    django_content_type_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.django_content_type_id_seq', 1, false);
          public          postgres    false    212            ?           0    0    django_migrations_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.django_migrations_id_seq', 17, true);
          public          postgres    false    210            ?           2606    24634    archers Archers_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY "Archer".archers
    ADD CONSTRAINT "Archers_pkey" PRIMARY KEY (a_id);
 B   ALTER TABLE ONLY "Archer".archers DROP CONSTRAINT "Archers_pkey";
       Archer            postgres    false    201            ?           2606    24658    individuals Individuals_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY "Archer".individuals
    ADD CONSTRAINT "Individuals_pkey" PRIMARY KEY (i_id);
 J   ALTER TABLE ONLY "Archer".individuals DROP CONSTRAINT "Individuals_pkey";
       Archer            postgres    false    204            ?           2606    32818    archers archers_a_name_key 
   CONSTRAINT     Y   ALTER TABLE ONLY "Archer".archers
    ADD CONSTRAINT archers_a_name_key UNIQUE (a_name);
 F   ALTER TABLE ONLY "Archer".archers DROP CONSTRAINT archers_a_name_key;
       Archer            postgres    false    201            ?           2606    24650    cups cups_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY "Archer".cups
    ADD CONSTRAINT cups_pkey PRIMARY KEY (cup_id);
 :   ALTER TABLE ONLY "Archer".cups DROP CONSTRAINT cups_pkey;
       Archer            postgres    false    203            ?           2606    24642    groups groups_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY "Archer".groups
    ADD CONSTRAINT groups_pkey PRIMARY KEY (g_id);
 >   ALTER TABLE ONLY "Archer".groups DROP CONSTRAINT groups_pkey;
       Archer            postgres    false    202            ?           2606    32830 &   individual_ranks individual_ranks_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY "Archer".individual_ranks
    ADD CONSTRAINT individual_ranks_pkey PRIMARY KEY (i_id);
 R   ALTER TABLE ONLY "Archer".individual_ranks DROP CONSTRAINT individual_ranks_pkey;
       Archer            postgres    false    208            ?           2606    32832 (   individual_scores individual_scores_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY "Archer".individual_scores
    ADD CONSTRAINT individual_scores_pkey PRIMARY KEY (i_id);
 T   ALTER TABLE ONLY "Archer".individual_scores DROP CONSTRAINT individual_scores_pkey;
       Archer            postgres    false    206            ?           2606    32834    team_ranks team_ranks_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY "Archer".team_ranks
    ADD CONSTRAINT team_ranks_pkey PRIMARY KEY (t_id);
 F   ALTER TABLE ONLY "Archer".team_ranks DROP CONSTRAINT team_ranks_pkey;
       Archer            postgres    false    209            ?           2606    32836    team_scores team_scores_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY "Archer".team_scores
    ADD CONSTRAINT team_scores_pkey PRIMARY KEY (t_id);
 H   ALTER TABLE ONLY "Archer".team_scores DROP CONSTRAINT team_scores_pkey;
       Archer            postgres    false    207            ?           2606    24676    teams teams_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY "Archer".teams
    ADD CONSTRAINT teams_pkey PRIMARY KEY (t_id);
 <   ALTER TABLE ONLY "Archer".teams DROP CONSTRAINT teams_pkey;
       Archer            postgres    false    205            ?           2606    33001    auth_group auth_group_name_key 
   CONSTRAINT     Y   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);
 H   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_name_key;
       public            postgres    false    217            ?           2606    32928 R   auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq 
   CONSTRAINT     ?   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);
 |   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq;
       public            postgres    false    219    219            ?           2606    32891 2   auth_group_permissions auth_group_permissions_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_pkey;
       public            postgres    false    219            ?           2606    32881    auth_group auth_group_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_pkey;
       public            postgres    false    217            ?           2606    32919 F   auth_permission auth_permission_content_type_id_codename_01ab375a_uniq 
   CONSTRAINT     ?   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);
 p   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq;
       public            postgres    false    215    215            ?           2606    32873 $   auth_permission auth_permission_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_pkey;
       public            postgres    false    215            ?           2606    32909 &   auth_user_groups auth_user_groups_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_pkey;
       public            postgres    false    223            ?           2606    32943 @   auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq 
   CONSTRAINT     ?   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);
 j   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq;
       public            postgres    false    223    223            ?           2606    32899    auth_user auth_user_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_pkey;
       public            postgres    false    221            ?           2606    32917 :   auth_user_user_permissions auth_user_user_permissions_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);
 d   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_pkey;
       public            postgres    false    225            ?           2606    32957 Y   auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq 
   CONSTRAINT     ?   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);
 ?   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq;
       public            postgres    false    225    225            ?           2606    32995     auth_user auth_user_username_key 
   CONSTRAINT     _   ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);
 J   ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_username_key;
       public            postgres    false    221            ?           2606    32981 &   django_admin_log django_admin_log_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_pkey;
       public            postgres    false    227            ?           2606    32865 E   django_content_type django_content_type_app_label_model_76bd3d3b_uniq 
   CONSTRAINT     ?   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);
 o   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq;
       public            postgres    false    213    213            ?           2606    32863 ,   django_content_type django_content_type_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_pkey;
       public            postgres    false    213            ?           2606    32855 (   django_migrations django_migrations_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.django_migrations DROP CONSTRAINT django_migrations_pkey;
       public            postgres    false    211            ?           1259    33002    auth_group_name_a6ea08ec_like    INDEX     h   CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);
 1   DROP INDEX public.auth_group_name_a6ea08ec_like;
       public            postgres    false    217            ?           1259    32939 (   auth_group_permissions_group_id_b120cbf9    INDEX     o   CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);
 <   DROP INDEX public.auth_group_permissions_group_id_b120cbf9;
       public            postgres    false    219            ?           1259    32940 -   auth_group_permissions_permission_id_84c5c92e    INDEX     y   CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);
 A   DROP INDEX public.auth_group_permissions_permission_id_84c5c92e;
       public            postgres    false    219            ?           1259    32925 (   auth_permission_content_type_id_2f476e4b    INDEX     o   CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);
 <   DROP INDEX public.auth_permission_content_type_id_2f476e4b;
       public            postgres    false    215            ?           1259    32955 "   auth_user_groups_group_id_97559544    INDEX     c   CREATE INDEX auth_user_groups_group_id_97559544 ON public.auth_user_groups USING btree (group_id);
 6   DROP INDEX public.auth_user_groups_group_id_97559544;
       public            postgres    false    223            ?           1259    32954 !   auth_user_groups_user_id_6a12ed8b    INDEX     a   CREATE INDEX auth_user_groups_user_id_6a12ed8b ON public.auth_user_groups USING btree (user_id);
 5   DROP INDEX public.auth_user_groups_user_id_6a12ed8b;
       public            postgres    false    223            ?           1259    32969 1   auth_user_user_permissions_permission_id_1fbb5f2c    INDEX     ?   CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON public.auth_user_user_permissions USING btree (permission_id);
 E   DROP INDEX public.auth_user_user_permissions_permission_id_1fbb5f2c;
       public            postgres    false    225            ?           1259    32968 +   auth_user_user_permissions_user_id_a95ead1b    INDEX     u   CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON public.auth_user_user_permissions USING btree (user_id);
 ?   DROP INDEX public.auth_user_user_permissions_user_id_a95ead1b;
       public            postgres    false    225            ?           1259    32996     auth_user_username_6821ab7c_like    INDEX     n   CREATE INDEX auth_user_username_6821ab7c_like ON public.auth_user USING btree (username varchar_pattern_ops);
 4   DROP INDEX public.auth_user_username_6821ab7c_like;
       public            postgres    false    221            ?           1259    32992 )   django_admin_log_content_type_id_c4bce8eb    INDEX     q   CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);
 =   DROP INDEX public.django_admin_log_content_type_id_c4bce8eb;
       public            postgres    false    227            ?           1259    32993 !   django_admin_log_user_id_c564eba6    INDEX     a   CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);
 5   DROP INDEX public.django_admin_log_user_id_c564eba6;
       public            postgres    false    227            ?           2606    24677    teams cup_id    FK CONSTRAINT     q   ALTER TABLE ONLY "Archer".teams
    ADD CONSTRAINT cup_id FOREIGN KEY (cup_id) REFERENCES "Archer".cups(cup_id);
 8   ALTER TABLE ONLY "Archer".teams DROP CONSTRAINT cup_id;
       Archer          postgres    false    205    203    2960            ?           2606    24783 -   individual_scores individual_scores_i_id_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY "Archer".individual_scores
    ADD CONSTRAINT individual_scores_i_id_fkey FOREIGN KEY (i_id) REFERENCES "Archer".individuals(i_id) NOT VALID;
 Y   ALTER TABLE ONLY "Archer".individual_scores DROP CONSTRAINT individual_scores_i_id_fkey;
       Archer          postgres    false    204    206    2962            ?           2606    32840 !   individuals individuals_a_id_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY "Archer".individuals
    ADD CONSTRAINT individuals_a_id_fkey FOREIGN KEY (a_id) REFERENCES "Archer".archers(a_id) NOT VALID;
 M   ALTER TABLE ONLY "Archer".individuals DROP CONSTRAINT individuals_a_id_fkey;
       Archer          postgres    false    201    204    2954            ?           2606    24810 #   individuals individuals_cup_id_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY "Archer".individuals
    ADD CONSTRAINT individuals_cup_id_fkey FOREIGN KEY (cup_id) REFERENCES "Archer".cups(cup_id) NOT VALID;
 O   ALTER TABLE ONLY "Archer".individuals DROP CONSTRAINT individuals_cup_id_fkey;
       Archer          postgres    false    2960    204    203            ?           2606    24815 !   individuals individuals_g_id_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY "Archer".individuals
    ADD CONSTRAINT individuals_g_id_fkey FOREIGN KEY (g_id) REFERENCES "Archer".groups(g_id) NOT VALID;
 M   ALTER TABLE ONLY "Archer".individuals DROP CONSTRAINT individuals_g_id_fkey;
       Archer          postgres    false    2958    204    202            ?           2606    24717    individual_ranks p_id    FK CONSTRAINT     }   ALTER TABLE ONLY "Archer".individual_ranks
    ADD CONSTRAINT p_id FOREIGN KEY (i_id) REFERENCES "Archer".individuals(i_id);
 A   ALTER TABLE ONLY "Archer".individual_ranks DROP CONSTRAINT p_id;
       Archer          postgres    false    2962    204    208            ?           2606    24749    team_ranks t_id    FK CONSTRAINT     q   ALTER TABLE ONLY "Archer".team_ranks
    ADD CONSTRAINT t_id FOREIGN KEY (t_id) REFERENCES "Archer".teams(t_id);
 ;   ALTER TABLE ONLY "Archer".team_ranks DROP CONSTRAINT t_id;
       Archer          postgres    false    209    2964    205            ?           2606    24788    teams teams_i1_id_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY "Archer".teams
    ADD CONSTRAINT teams_i1_id_fkey FOREIGN KEY (i1_id) REFERENCES "Archer".individuals(i_id) NOT VALID;
 B   ALTER TABLE ONLY "Archer".teams DROP CONSTRAINT teams_i1_id_fkey;
       Archer          postgres    false    204    2962    205            ?           2606    24793    teams teams_i2_id_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY "Archer".teams
    ADD CONSTRAINT teams_i2_id_fkey FOREIGN KEY (i2_id) REFERENCES "Archer".individuals(i_id) NOT VALID;
 B   ALTER TABLE ONLY "Archer".teams DROP CONSTRAINT teams_i2_id_fkey;
       Archer          postgres    false    2962    205    204            ?           2606    24798    teams teams_i3_id_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY "Archer".teams
    ADD CONSTRAINT teams_i3_id_fkey FOREIGN KEY (i3_id) REFERENCES "Archer".individuals(i_id) NOT VALID;
 B   ALTER TABLE ONLY "Archer".teams DROP CONSTRAINT teams_i3_id_fkey;
       Archer          postgres    false    2962    204    205            ?           2606    32934 O   auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm    FK CONSTRAINT     ?   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm;
       public          postgres    false    2983    219    215            ?           2606    32929 P   auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id;
       public          postgres    false    2988    219    217            ?           2606    32920 E   auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co    FK CONSTRAINT     ?   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 o   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co;
       public          postgres    false    215    213    2978            ?           2606    32949 D   auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 n   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id;
       public          postgres    false    2988    223    217            ?           2606    32944 B   auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id;
       public          postgres    false    223    2996    221            ?           2606    32963 S   auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm    FK CONSTRAINT     ?   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 }   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm;
       public          postgres    false    225    2983    215            ?           2606    32958 V   auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 ?   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id;
       public          postgres    false    221    2996    225            ?           2606    32982 G   django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co    FK CONSTRAINT     ?   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 q   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co;
       public          postgres    false    213    227    2978            ?           2606    32987 B   django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id;
       public          postgres    false    227    221    2996            ]   ?  x????n?HƯ}???`???rF{;ws?7??????Y???v? 	M?N?	?@?@ ?? /㪲?b?"??&Pd?\????U?οϺ?ӿ~???_??R???)??_?'bt?edh???ci???????a?????N??K??w|?%K??ÿ?????????w????O????~??=RHc?y^?g??o?z??^?^???\??.??]???{]??@\]SDcGv&?4>??S%v{K??K?lq"?s??Z?OYo_??H?ZX????~??t??3?'?8?"??U<??f?tc?2??n??w3?O'X?t땥8cӉ8??z???/??+l,??2ϲX??\;?c??u???˹?Ow?S????_?Ź??Q0?Z??'??|????@??)?Tc?1?
?e?????Bv?^???v)h*1???H
Z??vJ?n?7???ӡ???U??a?_??8??)????K??<.??????6?+???L/???GdV-?%??????W-^k??J??KFpՂ7x?%??#??X>??W?~?,?\ȃ??2?e?0_?xe?:S֊?a?6U???=??@?UҢ?v'?~?lC????r??V[d??8&#??[?r#????NI-xi@f`??Q??S2???(|A??x???[??Q?Lx?b??}b????Fg?w????>?ޯ??in?"?s2??@?Ͱш??VP???>??ܓ?
??Du??}2#??zFt2ZM{???O?,??d???nE?,}??3???,T	??kw2ѼBW?Z1A????:?`Aw[>?z7?e?Z?ϻ???O???R,?9?d?4?J?????o??B????	??$??????x?K$?B?Osw?#?V 2?bm??B????D#E!]?x?U^?{t????L?N?B?
??e???U(dJDt?pO????v?h???]???^S?RSl?Ecg??B[?jX??W?
k^?(F{b?G????K?-?Y??ݞR(?@??K?V!h?;??qB??
ɵ??4???e?v=??A?Z?4b?=
??d???6??(W?2l)?e?? mF~?w??I^?P??Ý??@1?N?^=???2???????[??	~@a?-V8?9??H?-֝X?"????u?z?)E?o??|?Ά\(b?y?ӡ?f?}??o?lZ???'?M???/??~?"???D??2	??1??J?z??"Q?Hx??????Q$????!*^F[?<? rB62???om??1????d?
䥊?V	*?{?Y?mC?8??xbL??BZyL??K?lK?J[vJ;??#?nS??d??WJ?f??ŉ#??xx?+E?m?-?-???ʷ?Z??%?0*?z?u?,z??we?W?lvF?^9???P?s????yOX??ʦ??.??;??/vj#?4?8祆 C?_n??	J?NT
-6?h??{??׬bc?1??5?֬??-~?d????,????T????:??????k???? ????N7B49qր? ?6?CĹT?Su??M??<D??{ *i?T(W0Jm?񽝔RH?U?BJ?D????t???­C???XGdo?M????(???,???i@?`?B+?+6?`?:? ?͌wr??? ??`dG)ؕJ?T0R??.?90(?;C??滫DU,&䘡C????/gy??z?r[{sU??n??F֬2>?k?t
??f??x??e?C?o?&?k???????s?Z????&????k|???`te?3?9u)?ց??????????O????_??6??q?]	 ??o	??s??? ?* ??u?0? A%E?L?? %??{"?lRI\??^I?6??Õ??E/ք5?fų???)?֟?j.???ι?IG6ݴ?L???U9??fh???R?l;???%P?M?p?????e Aoy?94?/?-C???)&MRaE?RɌ(;???n???H	?K?<ꛥ? ?????;A?Y?ï??0??9???E??-tE?HN?:?֊I~gX??Ӑ??????      _   L   x?3?444x?dóyӟ?n?|Ѿ?y???K??]??????P??H?Аˈ????2?2C?2??-???b???? ?l6<      ^   `   x?3?|6mÓ]??om?2?|?x??=?AlcΧK7??1?6?|>e;?m???u??i?Ov??2?|??????.s???)??,8?.Y?tCHM? T6?      d   ?  x?MVI??@;'??H???2??H??'?R.?AHB.?q??>T̆α??&>&>?pWt?3k?<`??K?][n?9{????????cv?x?pg???W?/??],?P??9?i???y??!z???7@?"??[0O??#6???????Ī??????PH?_J?	??1??5??@?????Ģ???!	0@??????m<Pckc?????.?)CN???̉?O??D????a???]PN????ǧ???D+s1??)Z/{??8?=o?Y=??b?g?t*z?+4??
u?g_v?DCJeQC"??*?A]?L?xH??,??s;d???s??}g;??O?m?(?`?2*'_?f?????,???v?;?f?=?r?n?Q?U?z5=???&g?60?U?n??$n[??mSG?m?L$o?v??????*?t????G??yM?Bn.??&p??O
y FJO????\M?ъ???\G??JA6?؎?@O?j??FX_K??IĞԁJ*?[??1=??x ?i_(3c?????g?l̛?????\?ܘ4????H?L???I5u?2b ?y[$,<?|??-??7٦+ ??7??U??W?????N???S?z?zO?6*?7Jcl?/?Q?U,???ژ ??[>???????`X9W]!u?????hAX?J????P?Aӂd?H?֪ј??E????????jQe?2Z_y?2??
??0~???c:??Bq0?^\?????n?f~????Nd?*i+?B?ܤ?[?@??=$???T??Eoۤ?2:z?@oQ??"?k??Ќ@?<S??????|?1????)J?z?~?b2?X?ު\Ԍ]bB"?|?޸XN?\??5W??1'k6??BG?DF???T)45k?Q??S??eC?R?]wK?|d??%?,??oJ????T??%??y? ??5?	H?ׄ`H7?0???
???` ??2?$???#k?˒???%w????p???qN?Ld??N??Dm?q????M?      b   Q  x?MVGv7[ˇ???]r?s? 8??7C?,????=?b??as?3K?1??߮o[?+a?p??????????́??o???		J????{ѪC%ܑ????GP@Qv?z?????8hfe????E???Vu?Fi?h????;?5?]??;&???Z??`?!?IjV?Ba?荘??+6?!K??HR??rl0ߘ+????????\<?YTl ȯ???f\?<b?"r???}q?Y???ͦ?N?=UC?r??M?d5hF?U??.?xI?ޖ?Q??v?U?!???ր?J ?1??휡?HU#??D=k
*?vA?u??0 4Ւ?
vj")?'????	??0??jEwl??N?>?؆K?@?ĕm?[?ĝ46?`9??wM?æ??sJ????5_?]?Ā????%??Z?d??Pv??0??:?Q?"??w^?"?RŽ??Y?	?g-p??FV?=W?M???ݲ+?pԂg???s?E?K@R'??????#?[?7eWz??x?8g???q???e?:?Y?G????? @??	zS?;}??geOw??6??)???=????<?@????P??????????}4???????ʾ??G ????橘?jfOC?ӕ=Ho?8ip?K泧|?L?|???+?趥(~?y7e? A?q?u??M?????ټ=??5??g?} ???ZZ򴡯zB:J??H????G]?]?(???:Y???^Xn?O]?S???X8e??_\?Bˮ?O?e6"??????;g??Uթ??}????N????]?=?Z?۩????7?{3l???.?!E	?տǔ?????xN9????)?????m????+?_s^[;?u??B/????RkOjU??~~~??3B?      `   ?  x?-?ˑl9?	????Uf<???D???͠G??}?ҋ???|???p?l|???Wְ?E߲??!???6???6W???ns????}???}˩?j??+ۖ~eL[r=lI??ɵ%!? ?$???t[Rr?e?%)?pPJi???ٮ"?m?.?ru?1?4????."?t$???=E????%???ޢoY<I??+????Tѷ?k?E???	)???E??."??"??e????Da??-?,G?]??P?!D?5???f?E???6*??.???;?(??;??9?D?2??-?u?=?T??SZ?s??Ub(?8??P?3???)??`??C??!??UJ??p??%???B~V??&??$????ׇ?V?İv???????{bXQ᣼???X??k??k??????́Zm>???????t?3?I!M???r?????йF?N?FtGUƎU7??? (???&??????.VIJ*????)?m?%5?pޭ?????9U??v???<n-D?m׬????????XV?7??v???I?׌)D?B??^????	<?j?%?????gtpf??i??n??D??IT??1dp???a???m?$?? Q?e???9ltѯ\:b$Q?]mL7?6??x?"?l?1?i,??`Hk,S??lj.Gi??=?a???Lu)?C2???<<a??Mk?Y}x_?y?7????(2?3?]/?vk?r?-1T?);??R??f????[???h??????????`??y??hb??]ڢ??w?<?F???$??ݰ???6????J;ɤ?o???Ѡ\?a?)ʇ????[L?bd???????E?????+???8??q???#??za?	9ZfM~Y????1?P7??,Gڦ?Ѹ{???????E?%f??<????X??$?sv??+$4;?W?q~?\??!??%FW??.??a????XDK??u;?K\????K?޸A쒸(??Y)uL-V???????8??n?Q????????????{ ??d???[?????f???|c      e   $  x?-?э!C??bN	?l?u?3?i?۱=aea?x???h=?M_?U^[?ö?????`߲???ڵf^?O;?ޜ???Z??Fǁrǒ
??c?,????>3??????v?????S???_?!???
?8/D??up?????H?$?ki?l???p?Sg?S?V?}??v????????<??_??uU?ڀ?H?L???N?I@??s:DqN)	?[j?	?X\"?rdr???E??M?z)?<{j-????X\+?????g?b?5????تB6P?`=??<??'Q????w??Rz      c   ?  x?MSan?!??Y?.??9??{ɲ?M>lK?&~S|c?#%&?.a!?X??P?^?ض?db???R????XI?-??H????W<>?4?[
?"??bW??-?'a???$tI???]????o?????to?@4??9	H^jO?e? -?d*?O??B?ܰw0?F}Q_??n?[D???3?P?P?t?8???^????P?gy???M?G)3?ޤŧ??????mV1V,?>?y??t???.?12gX??|?IH<?\?I%??t9?0LA?v*?h?,??$?M??l?5a?h?????i0?5??37Rw??!y???%?ɩ??q;[??)O??0sA/?V5؉????Fj?6f??????(????gf?????????7??7???cJ?^/???Dw??]%??3?n?ք??t??޻ ?????.?ּ?i_G5???Z?	Q#?5?D???G?N>??~?????GU? ????      a   ?  x?}??nbG?ק??ЊnwZƻ~?l"e)?U??xch?x?hC?nc??en?a?W???-+?TB??:C}??G?$;?%{Ƕ:?wgYc?4II?
g??a??.???*?ǻ??೭??!??????U??Lηl?]?Z?????4?Hn????BR??.g?>???h????F?kR??t??H.k??<iIZ??RZ?I?j٬??x?V????ױ?? ??6?}???OKv??i?'?vIk????????\?֮??i??l?էi??"㒑B:???????;?????և??nWwm?MF??I????ߗ~^z=?!??#??fc`????B|;!p
;?g??H?_ң????hԷ?b???????<-???]&?!7$??d?????_???r?>??&??=}H??(g{?vv8?q?(??2y?yJpi????0?a?|!???'?ˤ7???ҍu????wMo)p))@???H???׍???N?l?آ?????? ?Z(??T?iG?dvi?#?)#<@????J?ץe?=?}??P?]??Bl9??P?[?_?z????+.???C

C
??FS??V??F?5?k??6???S?}\.?'EQ?<??Qh????I???7?l4?C؂ʠ??Mzu?Rg?ÛT?C?л?Z?ʃ????
?sPuh?;qg??Yxu???"?XP??x??{XP5????թ?A`Oo?Q???????카7??Nɞ?ϥ[??s?b?f#?%?Tp???ۙ????.
?x8D"Y?`a?b6(??O????6?N.=?ϧ?&?Mj֣??k?qv?u/yT1???-????4mu1SZ??qV??j?nר?L:ݬ}?܀ :???vL
U?????4F?9???v????Q?ͼ[??C??&?A?h<???I?}?p?T??? ???9xh      m      x?????? ? ?      o      x?????? ? ?      k      x?????? ? ?      q      x?????? ? ?      s      x?????? ? ?      u      x?????? ? ?      w      x?????? ? ?      i      x?????? ? ?      g   ?  x???Mn? F??)??Z1Ï!g??PB]$l\??????Hu?l???1?f?!L?N)?f?t??nr??!AxxA??dO?=?? \P|&b??Y???*TL???qt???????FP?0?B?IG;?/???A??q???T?0??A??????\???7?>|w?6Y=HFK?х??\.t?ѓ?&?T???6>٨gG?,???ף???NC?j?D?P6???%v4?ߥ ?q?jvK)G-'?i[??k) ??o?,??w???o?1TU@??,?su?٭?uq?C0^??u=?K%_ƻ?I!.u?6??h???̝q???1?prS?=?=Rr??5????!?d?(??rA1??CN?c?-A4?uΊ??c?>?,??T?w?6?v????mq?}E???v?-?KO     