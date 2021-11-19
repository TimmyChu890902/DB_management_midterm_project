PGDMP     8    :            
    y            Archery    13.4    13.4 +    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    24625    Archery    DATABASE     n   CREATE DATABASE "Archery" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'English_United Kingdom.1252';
    DROP DATABASE "Archery";
                postgres    false                        2615    24626    Archery    SCHEMA        CREATE SCHEMA "Archery";
    DROP SCHEMA "Archery";
                postgres    false            �            1259    24627    archers    TABLE     �   CREATE TABLE "Archery".archers (
    a_id integer NOT NULL,
    a_unit character varying(30) NOT NULL,
    a_name character varying(20) NOT NULL
);
    DROP TABLE "Archery".archers;
       Archery         heap    postgres    false    4            �            1259    24643    cups    TABLE     �   CREATE TABLE "Archery".cups (
    cup_id integer NOT NULL,
    cup_name character varying(10) NOT NULL,
    host character varying(10) NOT NULL,
    day date NOT NULL
);
    DROP TABLE "Archery".cups;
       Archery         heap    postgres    false    4            �            1259    24635    groups    TABLE     V   CREATE TABLE "Archery".groups (
    g_id integer NOT NULL,
    g_name character(3)
);
    DROP TABLE "Archery".groups;
       Archery         heap    postgres    false    4            �            1259    24712    individual_ranks    TABLE     �   CREATE TABLE "Archery".individual_ranks (
    i_id integer NOT NULL,
    tenx integer NOT NULL,
    x integer NOT NULL,
    total integer NOT NULL,
    rank integer NOT NULL
);
 '   DROP TABLE "Archery".individual_ranks;
       Archery         heap    postgres    false    4            �            1259    24697    individual_scores    TABLE     �   CREATE TABLE "Archery".individual_scores (
    i_id integer NOT NULL,
    tenx integer NOT NULL,
    x integer NOT NULL,
    total integer NOT NULL,
    set integer NOT NULL
);
 (   DROP TABLE "Archery".individual_scores;
       Archery         heap    postgres    false    4            �            1259    24651    individuals    TABLE     �   CREATE TABLE "Archery".individuals (
    i_id integer NOT NULL,
    cup_id integer NOT NULL,
    g_id integer NOT NULL,
    target character varying(4) NOT NULL,
    a_id integer
);
 "   DROP TABLE "Archery".individuals;
       Archery         heap    postgres    false    4            �            1259    24744 
   team_ranks    TABLE     �   CREATE TABLE "Archery".team_ranks (
    t_id integer NOT NULL,
    tenx integer NOT NULL,
    x integer NOT NULL,
    total integer NOT NULL,
    rank integer NOT NULL
);
 !   DROP TABLE "Archery".team_ranks;
       Archery         heap    postgres    false    4            �            1259    24702    team_scores    TABLE     �   CREATE TABLE "Archery".team_scores (
    t_id integer NOT NULL,
    score_1 integer NOT NULL,
    score_2 integer NOT NULL,
    score_3 integer NOT NULL,
    tenx integer NOT NULL,
    x integer NOT NULL,
    total integer NOT NULL
);
 "   DROP TABLE "Archery".team_scores;
       Archery         heap    postgres    false    4            �            1259    24669    teams    TABLE     �   CREATE TABLE "Archery".teams (
    t_id integer NOT NULL,
    cup_id integer NOT NULL,
    t_name character varying(30) NOT NULL,
    i1_id integer NOT NULL,
    i2_id integer NOT NULL,
    i3_id integer NOT NULL
);
    DROP TABLE "Archery".teams;
       Archery         heap    postgres    false    4            �          0    24627    archers 
   TABLE DATA           :   COPY "Archery".archers (a_id, a_unit, a_name) FROM stdin;
    Archery          postgres    false    201   �3       �          0    24643    cups 
   TABLE DATA           >   COPY "Archery".cups (cup_id, cup_name, host, day) FROM stdin;
    Archery          postgres    false    203   @;       �          0    24635    groups 
   TABLE DATA           1   COPY "Archery".groups (g_id, g_name) FROM stdin;
    Archery          postgres    false    202   �;       �          0    24712    individual_ranks 
   TABLE DATA           I   COPY "Archery".individual_ranks (i_id, tenx, x, total, rank) FROM stdin;
    Archery          postgres    false    208   <       �          0    24697    individual_scores 
   TABLE DATA           I   COPY "Archery".individual_scores (i_id, tenx, x, total, set) FROM stdin;
    Archery          postgres    false    206   @       �          0    24651    individuals 
   TABLE DATA           J   COPY "Archery".individuals (i_id, cup_id, g_id, target, a_id) FROM stdin;
    Archery          postgres    false    204   rC       �          0    24744 
   team_ranks 
   TABLE DATA           C   COPY "Archery".team_ranks (t_id, tenx, x, total, rank) FROM stdin;
    Archery          postgres    false    209   nG       �          0    24702    team_scores 
   TABLE DATA           Y   COPY "Archery".team_scores (t_id, score_1, score_2, score_3, tenx, x, total) FROM stdin;
    Archery          postgres    false    207   �H       �          0    24669    teams 
   TABLE DATA           M   COPY "Archery".teams (t_id, cup_id, t_name, i1_id, i2_id, i3_id) FROM stdin;
    Archery          postgres    false    205   �J       G           2606    24634    archers Archers_pkey 
   CONSTRAINT     Y   ALTER TABLE ONLY "Archery".archers
    ADD CONSTRAINT "Archers_pkey" PRIMARY KEY (a_id);
 C   ALTER TABLE ONLY "Archery".archers DROP CONSTRAINT "Archers_pkey";
       Archery            postgres    false    201            O           2606    24658    individuals Individuals_pkey 
   CONSTRAINT     a   ALTER TABLE ONLY "Archery".individuals
    ADD CONSTRAINT "Individuals_pkey" PRIMARY KEY (i_id);
 K   ALTER TABLE ONLY "Archery".individuals DROP CONSTRAINT "Individuals_pkey";
       Archery            postgres    false    204            I           2606    32818    archers archers_a_name_key 
   CONSTRAINT     Z   ALTER TABLE ONLY "Archery".archers
    ADD CONSTRAINT archers_a_name_key UNIQUE (a_name);
 G   ALTER TABLE ONLY "Archery".archers DROP CONSTRAINT archers_a_name_key;
       Archery            postgres    false    201            M           2606    24650    cups cups_pkey 
   CONSTRAINT     S   ALTER TABLE ONLY "Archery".cups
    ADD CONSTRAINT cups_pkey PRIMARY KEY (cup_id);
 ;   ALTER TABLE ONLY "Archery".cups DROP CONSTRAINT cups_pkey;
       Archery            postgres    false    203            K           2606    24642    groups groups_pkey 
   CONSTRAINT     U   ALTER TABLE ONLY "Archery".groups
    ADD CONSTRAINT groups_pkey PRIMARY KEY (g_id);
 ?   ALTER TABLE ONLY "Archery".groups DROP CONSTRAINT groups_pkey;
       Archery            postgres    false    202            W           2606    32830 &   individual_ranks individual_ranks_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY "Archery".individual_ranks
    ADD CONSTRAINT individual_ranks_pkey PRIMARY KEY (i_id);
 S   ALTER TABLE ONLY "Archery".individual_ranks DROP CONSTRAINT individual_ranks_pkey;
       Archery            postgres    false    208            S           2606    32832 (   individual_scores individual_scores_pkey 
   CONSTRAINT     k   ALTER TABLE ONLY "Archery".individual_scores
    ADD CONSTRAINT individual_scores_pkey PRIMARY KEY (i_id);
 U   ALTER TABLE ONLY "Archery".individual_scores DROP CONSTRAINT individual_scores_pkey;
       Archery            postgres    false    206            Y           2606    32834    team_ranks team_ranks_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY "Archery".team_ranks
    ADD CONSTRAINT team_ranks_pkey PRIMARY KEY (t_id);
 G   ALTER TABLE ONLY "Archery".team_ranks DROP CONSTRAINT team_ranks_pkey;
       Archery            postgres    false    209            U           2606    32836    team_scores team_scores_pkey 
   CONSTRAINT     _   ALTER TABLE ONLY "Archery".team_scores
    ADD CONSTRAINT team_scores_pkey PRIMARY KEY (t_id);
 I   ALTER TABLE ONLY "Archery".team_scores DROP CONSTRAINT team_scores_pkey;
       Archery            postgres    false    207            Q           2606    24676    teams teams_pkey 
   CONSTRAINT     S   ALTER TABLE ONLY "Archery".teams
    ADD CONSTRAINT teams_pkey PRIMARY KEY (t_id);
 =   ALTER TABLE ONLY "Archery".teams DROP CONSTRAINT teams_pkey;
       Archery            postgres    false    205            ]           2606    24677    teams cup_id    FK CONSTRAINT     s   ALTER TABLE ONLY "Archery".teams
    ADD CONSTRAINT cup_id FOREIGN KEY (cup_id) REFERENCES "Archery".cups(cup_id);
 9   ALTER TABLE ONLY "Archery".teams DROP CONSTRAINT cup_id;
       Archery          postgres    false    203    2893    205            a           2606    24783 -   individual_scores individual_scores_i_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY "Archery".individual_scores
    ADD CONSTRAINT individual_scores_i_id_fkey FOREIGN KEY (i_id) REFERENCES "Archery".individuals(i_id) NOT VALID;
 Z   ALTER TABLE ONLY "Archery".individual_scores DROP CONSTRAINT individual_scores_i_id_fkey;
       Archery          postgres    false    2895    204    206            \           2606    32840 !   individuals individuals_a_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY "Archery".individuals
    ADD CONSTRAINT individuals_a_id_fkey FOREIGN KEY (a_id) REFERENCES "Archery".archers(a_id) NOT VALID;
 N   ALTER TABLE ONLY "Archery".individuals DROP CONSTRAINT individuals_a_id_fkey;
       Archery          postgres    false    2887    204    201            Z           2606    24810 #   individuals individuals_cup_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY "Archery".individuals
    ADD CONSTRAINT individuals_cup_id_fkey FOREIGN KEY (cup_id) REFERENCES "Archery".cups(cup_id) NOT VALID;
 P   ALTER TABLE ONLY "Archery".individuals DROP CONSTRAINT individuals_cup_id_fkey;
       Archery          postgres    false    204    203    2893            [           2606    24815 !   individuals individuals_g_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY "Archery".individuals
    ADD CONSTRAINT individuals_g_id_fkey FOREIGN KEY (g_id) REFERENCES "Archery".groups(g_id) NOT VALID;
 N   ALTER TABLE ONLY "Archery".individuals DROP CONSTRAINT individuals_g_id_fkey;
       Archery          postgres    false    2891    202    204            b           2606    24717    individual_ranks p_id    FK CONSTRAINT        ALTER TABLE ONLY "Archery".individual_ranks
    ADD CONSTRAINT p_id FOREIGN KEY (i_id) REFERENCES "Archery".individuals(i_id);
 B   ALTER TABLE ONLY "Archery".individual_ranks DROP CONSTRAINT p_id;
       Archery          postgres    false    208    204    2895            c           2606    24749    team_ranks t_id    FK CONSTRAINT     s   ALTER TABLE ONLY "Archery".team_ranks
    ADD CONSTRAINT t_id FOREIGN KEY (t_id) REFERENCES "Archery".teams(t_id);
 <   ALTER TABLE ONLY "Archery".team_ranks DROP CONSTRAINT t_id;
       Archery          postgres    false    209    205    2897            ^           2606    24788    teams teams_i1_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY "Archery".teams
    ADD CONSTRAINT teams_i1_id_fkey FOREIGN KEY (i1_id) REFERENCES "Archery".individuals(i_id) NOT VALID;
 C   ALTER TABLE ONLY "Archery".teams DROP CONSTRAINT teams_i1_id_fkey;
       Archery          postgres    false    204    205    2895            _           2606    24793    teams teams_i2_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY "Archery".teams
    ADD CONSTRAINT teams_i2_id_fkey FOREIGN KEY (i2_id) REFERENCES "Archery".individuals(i_id) NOT VALID;
 C   ALTER TABLE ONLY "Archery".teams DROP CONSTRAINT teams_i2_id_fkey;
       Archery          postgres    false    2895    205    204            `           2606    24798    teams teams_i3_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY "Archery".teams
    ADD CONSTRAINT teams_i3_id_fkey FOREIGN KEY (i3_id) REFERENCES "Archery".individuals(i_id) NOT VALID;
 C   ALTER TABLE ONLY "Archery".teams DROP CONSTRAINT teams_i3_id_fkey;
       Archery          postgres    false    204    205    2895            �   �  x����n�Hǯ}���`�����v��roF3-mK3�RK+��A� � ! �&�@�^�Ue������;�"+���\�:u��ֵ������xm��S<�K��:=�C?7 C��Tϰ���u���&�3l>�2WlX���Yڏ���Ǐ�����������j�ޜ�����"{*��.�o}{�������X�ܛtY5�]-����{��l�ى����:H���9/�ő�ʳ�+�8f�]�:!=����-��J��믞i?�š�H�����h�n�Z�}��W��H��	V#�ze)��t";�G^m���O������s,�"݆k�~������4q>ׂ�6wk"�&�Q �8�q
�T�\�D���7;f��l:�pX���Л�76T�V��޲�6�M"�	�IaK��N9؎�f��r<��8��Q8���a'��U���)�W�ES���b��;qq*��O������A�w�d�/-~k���KF��o���l+O���B����fE|9��w�˒a�2���s��'�zm���#{*��\�fD'�M΃�ɚ�����э ���E~vH���[�J#����NY,xy@fh�Q��S2���(~A����ᷖ�����$8���-T6��N�ﮫ�]�}P=&��"�E>�;dZo�,�e������7�]�ߺ#3���ڂ��dڛ�FVt2ZMg�K��,��d�6��nE�,}�gY�3���,T	��+o2��bW�Z)I������aAo_>�z7�e�����Y�%�,땥T�s�+Ȋh��AQ*;�~���/���#�I&o�k'�4���B��so�#�Q 2��m��"!����D3M]��75^.�t����L��V�"�
��a��W)bJDtqO������h���]��_Q�RSl�Ecg�:E"�jX����j~�$F;b�G����s�-�Y�¿9���@��K�Q!h�[w�aBѐ
ɷ���`4���a�v=��a�Z�4b����T�e�57�(_�2j)�e�� ��G~�w��)^�R�?Ý���D1�j~��"	e�]Y��[�J�`�GQ�-V8�9�%;��͊�WI���c]�~rJv�-VT�����ƛg;g��%�|�eӒ�gd?��7٧��8�9�q_ɉ��e��C^ݖ>��NE�Hvt����v��m�}�x������(��L��A<���T�&�`��]�<W��*a·�x�)��c��e�<O��1UH���]|i�c)Wi�N�DTvD�MՕ����Iq��qb[ub�A�D��Bre���R�]��DeF�\�!.J~v F�]����݀Q�Wϡ��T��\�w�r��C���)C}e��z��b����H*>���!ȈT�l~�Ӟ�B�M�<Vc����X���@��a�W�5���/���&�+K<,�Յm��{��6�Ca��Z��q ��b��~�!��k�E`k�!�\�̩:t�:��i"�� ��X*��&�����NI)��*q!�g2�z�e�J]H�֊�ȃQ��#r��ƁwgrZ�^��N�4�f0u����w0��\�z�?�C�� �P0���lK�l*)�p�<٭�}��U�*��r��!�^[嗇��B�C��<���\g7	X����Ӻ7���Xq:�x`��P��ǲ��.d׍uZC�yP+m�mc��xn�u>�`�0����Ԝ��s��Ͽ~����������߁Ykw���� �ݷ���S��c �* ���0� A%E�L�Y %��{"���)\�^I�6���-�^�����"\��J�P[}V�O����_;�2D'�dt�Z1���䴢��uV��K�����D�7U�-��M.��������t��FV��4I��Hy$3��ʯf����"%T/�
�o��L�5v'�yg��bð��� ����s+      �   M   x�3�44�|�dóyӟ�n�|Ѿ�y��K�?]������@��H�А˘��� �2C�2#�i8�Z��p��qqq �6<      �   `   x�3�|6mÓ]��om�2�|�x��=�AlcΧK7?�1�6�|>e;�m���u��i�Ov��2�|�����.s���)��,8�.Y�tCHM� T6�      �   �  x�MVI��@;'��H���2��H��'�R.�AHB.�q��>T̆α��&>&>�pWt�3k�<`��K�][n�9{�������cv�x�pg��W�/��],�P��9�i���y��!z���7@�"��[0O��#6�������Ī������PH�_J�	��1��5��@����Ģ���!	0@�����m<Pckc�����.�)CN���̉�O��D��?�a���]PN����ǧ���D+s1��)Z/{��8�=o�Y=��b�g�t*z�+4��
u�g_v�DCJeQC"��*�A]�L�xH�,��s;d���s��}g;��O�m�(�`�2*'_�f�����,���v�;�f�=�r�n�Q�U�z5=���&g�60�U�n��$n[��mSG�m�L$o�v�����*�t����G��yM�Bn.��&p��O
y FJO����\M�ъ���\G��JA6�؎�@O�j��FX_K��IĞԁJ*�[��1=��x �i_(3c����g�l̛�����\�ܘ4����H�L���I5u�2b �y[$,<�|��-��7٦+ ��7��U��W�����N���S�z�zO�6*�7Jcl�/�Q�U,���ژ ��[>�������`X9W]!u�����hAX�J����P�Aӂd�H�֪ј�E��������jQe�2Z_y�2��
��0~���c:��Bq0�^\����n�f~���Nd�*i+�B�ܤ�[�@��=$��T�Eoۤ�2:z�@oQ��"�k��Ќ@�<S������|�1����)J�z�~�b2�X�ު\Ԍ]bB"�|�޸XN�\��5W��1'k6�BG�DF���T)45k�Q��S��eC�R�]wK�|d��%�,��oJ����T��%��y� �5�	H�ׄ`H7�0���
��` ��2�$���#k�˒���%w����p��qN�Ld��N��Dm�q����M�      �   Q  x�MVGv7[ˇ���]r�s� 8��7C�,���=�b��as�3K�1��߮o[�+a�p����������́��o���		J����{ѪC%ܑ����GP@Qv�z�����8hfe���E���Vu�Fi�h����;�5�]��;&���Z��`�!�IjV�Ba�荘��+6�!K��HR��rl0ߘ+������?�\<�YTl ȯ���f\�<b�"r��}q�Y���ͦ�N�=UC�r��M�d5hF�U��.�xI�ޖ�Q��v�U�!�ր�J �1��휡�HU#��D=k
*�vA�u��0 4Ւ�
vj")�'����	��0��jEwl��N�>�؆K�@�ĕm�[�ĝ46�`9��wM�æ��sJ����5_�]�Ā����%��Z�d�Pv�0�:�Q�"�w^�"�RŽ��Y�	�g-p��FV�=W�M���ݲ+�pԂg���s�E�K@R'�����#�[�7eWz��x�8g��q���e�:�Y�G��� @��	zS�;}��geOw��6��)��=���<�@����P���������}4������ʾ��G ����橘�jfOC�ӕ=Ho�8ip�K泧|�L�|���+�趥(~�y7e� A�q�u��M����ټ=��5��g�} ���ZZ򴡯zB:J��H����G]�]�(���:Y��^Xn�O]�S���X8e��_\�Bˮ�O�e6"������;g��Uթ��}����N����]�=�Z�۩����7�{3l�?�.?!E	�տǔ����xN9����)����m����+�_s^[;�u�B/����RkOjU��~~~��3B�      �   �  x�-�K�k9�b1B��e����Q�38� ��x��ׯ�a���e/�C�W�ۜ�OV���ns>ep��ʞ6��[N�U�Χl[.��1mI�!��%!'ז�\`���+�mI���nKR.᠔�*�+"B�]E�۶]���bVi�)���"���#�����)�+��^"ι�-��E��Աپ��2��*��y����;!�6�(��Ew;CDp�L�(촳�p�f'�l��nM�x��uyw�M��j����$
;�N��t�-�_��q���D���)-Թ]�*1sPj���`��pl�?�pi�p��:%��j	�x�[��a%9�6�&���̽>�pް�'�����2c�aE����c-�G����k���?�;6�?j�� ��f�������O
i���-�\�����5�@v24�;�2v\��yFAa��6q�?�p5��q�JRR��N	th�,�a��n-E�V�Ω�l�c-U��qk!��h�fm$P<�t�Ĳ�Q����'!^3��m��zM��׺'�,����)׭����� �q�f}�H9���X�c��,um���ۨI��A.���F�s��_�t�H���ژ"n0m,�Ex�64�c:`�X�����X�0���\�
�*3{��h�G;:��R��d���yx��;�����$z�oLQo�Qd�gX�8^����D^�����a�7[�z����xK]�m���S��W��8��ML�K[�1���'��;�����P��&���[Y�`'�����o4(�k����B*������@b�>�5�8b��1ű=��J&k7�oa��㈿�^�`BN��Y�_V��tqL4�M�#ˑ�)q4����!n�����9���f�Pcdnq���}��9�����櫊�8�/�b��j��ƕ㫋�x�%-�:ђ6v��%e/���7n�$.J<cVJS��;���b}�.���[b��l��(b|>�[��C�b����L7�{�Z������w�      �   $  x�-�э!C��bN	�l�u�3�i�۱=aea�x���h=�M_�U^[�ö�����`߲���ڵf^�O;�ޜ���Z��Fǁrǒ
��c�,����>3�����v����S��_�!���
�8/D��up����H�$�ki�l���p�Sg�S�V�}��v��������<��_��uU�ڀ�H�L���N�I@��s:DqN)	�[j�	�X\"�rdr���E��M�z)�<{j-����X\+�����g�b�5����تB6P�`=�<��'Q��?w��Rz      �   �  x�MSan�!��Y�.��9��{ɲ�M>lK�&~S|c�#%&�.a!�X��P�^�ض�db���R��?�XI�-��H����W<>�4�[
�"��bW��-�'a���$tI���]����o�����to�@4��9	H^jO�e� -�d*�O�B�ܰw0�F}Q_��n�[D��3�P�P�t�8���^��P�gy���M�G)3�ޤŧ������mV1V,�>�y��t���.�12gX��|�IH<�\�I%��t9�0LA�v*�h�,��$�M��l�5a�h�����i0�5��37Rw��!y���%�ɩ��q;[��)O��0sA/�V5؉��Fj�6f����(����gf��������7��7���cJ�^/���Dw��]%��3�n�ք��t��޻ �����.�ּ�i_G5���Z�	Q#�5�D�G�N>��~�����GU� ����      �   �  x�}��nbG�ק��ЊnwZƻ~�l"e)�U��xch�x�hC�nc��en�a�W���-+�TB��:C}��G�$;�%{Ƕ:�wgYc�4II�
g�a��.���*�ǻ��೭��!����U��Lηl�]�Z�����4�Hn���BR��.g�>���h���?F�kR�t��H.k��<iIZ��RZ�I�j٬��x�V���ױ�� �6�}���OKv��i�'�vIk��������\�֮��i��l�էi��"㒑B:�������;�����և��nWwm�MF��I����ߗ~^z=�!��#�fc`���B|;!p
;�g��H�_ң���hԷ�b��?���<-���]&�!7$��d����_?��r�>��&��=}H��(g{�vv8�q�(��2y�yJpi����0�a�|!���'�ˤ7���ҍu���wMo)p))@��H���׍���N�l�آ������ �Z(�T�iG�dvi�#�)#<@����J�ץe�=�}�P�]��Bl9��P�[�_�z����+.���C

C
��FS��V��F�5�k��6���S�}\.�'EQ�<��Qh����I���7�l4�C؂ʠ��Mzu�Rg�ÛT�C�л�Z�ʃ����
�sPuh�;qg��Yxu���"�XP��x��{XP5����թ�A`Oo�Q������카7��Nɞ�ϥ[��s�b�f#�%�Tp���ۙ���.
�x8D"Y�`a�b6(��O����6�N.=�ϧ�&�Mj֣��k�qv�u/yT1���-����4mu1SZ��qV��j�nר�L:ݬ}�܀ :���vL
U�����4F�9���v���Q�ͼ[��C��&�A�h<���I�}�p�T�?� ���9xh     