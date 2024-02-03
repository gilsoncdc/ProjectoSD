PGDMP     #    #                |            db_gestaovoos    14.4    14.4 ]    m           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            n           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            o           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            p           1262    169298    db_gestaovoos    DATABASE     q   CREATE DATABASE db_gestaovoos WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'Portuguese_Cabo Verde.1252';
    DROP DATABASE db_gestaovoos;
                postgres    false            �            1259    169377 	   aeronaves    TABLE     �   CREATE TABLE public.aeronaves (
    id_aeronave integer NOT NULL,
    modelo character varying(50),
    ano_fabricacao integer,
    estado character varying(20)
);
    DROP TABLE public.aeronaves;
       public         heap    postgres    false            �            1259    169376    aeronaves_id_aeronave_seq    SEQUENCE     �   CREATE SEQUENCE public.aeronaves_id_aeronave_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.aeronaves_id_aeronave_seq;
       public          postgres    false    216            q           0    0    aeronaves_id_aeronave_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.aeronaves_id_aeronave_seq OWNED BY public.aeronaves.id_aeronave;
          public          postgres    false    215            �            1259    169462    funcionario    TABLE     �   CREATE TABLE public.funcionario (
    id_funcionario integer NOT NULL,
    nome character varying(100),
    email character varying(50),
    id_manutencao integer
);
    DROP TABLE public.funcionario;
       public         heap    postgres    false            �            1259    169461    funcionario_id_funcionario_seq    SEQUENCE     �   CREATE SEQUENCE public.funcionario_id_funcionario_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public.funcionario_id_funcionario_seq;
       public          postgres    false    232            r           0    0    funcionario_id_funcionario_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public.funcionario_id_funcionario_seq OWNED BY public.funcionario.id_funcionario;
          public          postgres    false    231            �            1259    169398    hangares    TABLE     y   CREATE TABLE public.hangares (
    id_hangar integer NOT NULL,
    nome character varying(50),
    capacidade integer
);
    DROP TABLE public.hangares;
       public         heap    postgres    false            �            1259    169397    hangares_id_hangar_seq    SEQUENCE     �   CREATE SEQUENCE public.hangares_id_hangar_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.hangares_id_hangar_seq;
       public          postgres    false    220            s           0    0    hangares_id_hangar_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.hangares_id_hangar_seq OWNED BY public.hangares.id_hangar;
          public          postgres    false    219            �            1259    169391 
   manutencao    TABLE     �   CREATE TABLE public.manutencao (
    id_manutencao integer NOT NULL,
    id_aeronave integer,
    status character varying(20),
    data date,
    id_hangar integer,
    hora_inicio time without time zone,
    hora_fim time without time zone
);
    DROP TABLE public.manutencao;
       public         heap    postgres    false            �            1259    169390    manutencao_id_manutencao_seq    SEQUENCE     �   CREATE SEQUENCE public.manutencao_id_manutencao_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public.manutencao_id_manutencao_seq;
       public          postgres    false    218            t           0    0    manutencao_id_manutencao_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public.manutencao_id_manutencao_seq OWNED BY public.manutencao.id_manutencao;
          public          postgres    false    217            �            1259    169469    notificacao    TABLE     �   CREATE TABLE public.notificacao (
    id_notificacao integer NOT NULL,
    id_equipa integer,
    descricao character varying(250),
    data_notificacao date
);
    DROP TABLE public.notificacao;
       public         heap    postgres    false            �            1259    169468    notificacao_id_notificacao_seq    SEQUENCE     �   CREATE SEQUENCE public.notificacao_id_notificacao_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public.notificacao_id_notificacao_seq;
       public          postgres    false    234            u           0    0    notificacao_id_notificacao_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public.notificacao_id_notificacao_seq OWNED BY public.notificacao.id_notificacao;
          public          postgres    false    233            �            1259    169335 
   passageiro    TABLE     	  CREATE TABLE public.passageiro (
    id_passageiro integer NOT NULL,
    nome character(100),
    sexo character(1),
    data_nascimento date,
    endereco character(50),
    num_pa character(20),
    nacionalidade character(50),
    email character varying(50)
);
    DROP TABLE public.passageiro;
       public         heap    postgres    false            �            1259    169334    passageiro_id_passageiro_seq    SEQUENCE     �   CREATE SEQUENCE public.passageiro_id_passageiro_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public.passageiro_id_passageiro_seq;
       public          postgres    false    212            v           0    0    passageiro_id_passageiro_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public.passageiro_id_passageiro_seq OWNED BY public.passageiro.id_passageiro;
          public          postgres    false    211            �            1259    169405    pecas    TABLE     r   CREATE TABLE public.pecas (
    id_pecas integer NOT NULL,
    nome character varying(100),
    estado integer
);
    DROP TABLE public.pecas;
       public         heap    postgres    false            �            1259    169404    pecas_id_pecas_seq    SEQUENCE     �   CREATE SEQUENCE public.pecas_id_pecas_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.pecas_id_pecas_seq;
       public          postgres    false    222            w           0    0    pecas_id_pecas_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.pecas_id_pecas_seq OWNED BY public.pecas.id_pecas;
          public          postgres    false    221            �            1259    169427    pecas_manutencao    TABLE     �   CREATE TABLE public.pecas_manutencao (
    id_pecas_manutencao integer NOT NULL,
    id_pecas integer,
    id_manutencao integer
);
 $   DROP TABLE public.pecas_manutencao;
       public         heap    postgres    false            �            1259    169426 (   pecas_manutencao_id_pecas_manutencao_seq    SEQUENCE     �   CREATE SEQUENCE public.pecas_manutencao_id_pecas_manutencao_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ?   DROP SEQUENCE public.pecas_manutencao_id_pecas_manutencao_seq;
       public          postgres    false    228            x           0    0 (   pecas_manutencao_id_pecas_manutencao_seq    SEQUENCE OWNED BY     u   ALTER SEQUENCE public.pecas_manutencao_id_pecas_manutencao_seq OWNED BY public.pecas_manutencao.id_pecas_manutencao;
          public          postgres    false    227            �            1259    169419 	   problemas    TABLE     �   CREATE TABLE public.problemas (
    id_problema integer NOT NULL,
    descricao character varying(50),
    id_manutencao integer
);
    DROP TABLE public.problemas;
       public         heap    postgres    false            �            1259    169418    problemas_id_problema_seq    SEQUENCE     �   CREATE SEQUENCE public.problemas_id_problema_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.problemas_id_problema_seq;
       public          postgres    false    226            y           0    0    problemas_id_problema_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.problemas_id_problema_seq OWNED BY public.problemas.id_problema;
          public          postgres    false    225            �            1259    169342    reserva    TABLE     �   CREATE TABLE public.reserva (
    id_reserva integer NOT NULL,
    id_voo integer,
    id_passageiro integer,
    data_reserva date,
    montante numeric,
    data_pagamento date,
    classe integer,
    numero_assento character varying(10)
);
    DROP TABLE public.reserva;
       public         heap    postgres    false            �            1259    169341    reserva_id_reserva_seq    SEQUENCE     �   CREATE SEQUENCE public.reserva_id_reserva_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.reserva_id_reserva_seq;
       public          postgres    false    214            z           0    0    reserva_id_reserva_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.reserva_id_reserva_seq OWNED BY public.reserva.id_reserva;
          public          postgres    false    213            �            1259    169412    tarefas    TABLE     �   CREATE TABLE public.tarefas (
    id_tarefa integer NOT NULL,
    descricao character varying(100),
    id_manutencao integer
);
    DROP TABLE public.tarefas;
       public         heap    postgres    false            �            1259    169411    tarefas_id_tarefa_seq    SEQUENCE     �   CREATE SEQUENCE public.tarefas_id_tarefa_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.tarefas_id_tarefa_seq;
       public          postgres    false    224            {           0    0    tarefas_id_tarefa_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.tarefas_id_tarefa_seq OWNED BY public.tarefas.id_tarefa;
          public          postgres    false    223            �            1259    169475    v_detalhes_manutencao    VIEW     C  CREATE VIEW public.v_detalhes_manutencao AS
 SELECT m.id_manutencao,
    a.modelo,
    a.ano_fabricacao,
    m.data,
    h.nome,
    m.hora_inicio,
    m.hora_fim
   FROM ((public.manutencao m
     JOIN public.aeronaves a ON ((m.id_aeronave = a.id_aeronave)))
     JOIN public.hangares h ON ((m.id_hangar = h.id_hangar)));
 (   DROP VIEW public.v_detalhes_manutencao;
       public          postgres    false    216    218    220    220    218    218    218    218    218    216    216            �            1259    169328    voo    TABLE     �   CREATE TABLE public.voo (
    id_voo integer NOT NULL,
    data date,
    capacidade integer,
    hora_partida time with time zone,
    hora_chegada time with time zone,
    gate_partida character varying(5),
    gate_chegada character varying(5)
);
    DROP TABLE public.voo;
       public         heap    postgres    false            �            1259    169437    v_reserva_voos    VIEW     �   CREATE VIEW public.v_reserva_voos AS
 SELECT v.id_voo,
    count(r.id_passageiro) AS total_reserva,
    v.capacidade
   FROM public.reserva r,
    public.voo v
  WHERE (r.id_voo = v.id_voo)
  GROUP BY v.id_voo, v.capacidade;
 !   DROP VIEW public.v_reserva_voos;
       public          postgres    false    210    214    214    210            �            1259    169450    v_slot_manutencao    VIEW     �   CREATE VIEW public.v_slot_manutencao AS
 SELECT m.id_manutencao,
    m.status,
    m.data,
    m.hora_inicio,
    m.hora_fim,
    h.id_hangar,
    h.nome
   FROM public.manutencao m,
    public.hangares h
  WHERE (m.id_hangar = h.id_hangar);
 $   DROP VIEW public.v_slot_manutencao;
       public          postgres    false    218    218    218    218    218    218    220    220            �            1259    169327    voo_id_voo_seq    SEQUENCE     �   CREATE SEQUENCE public.voo_id_voo_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.voo_id_voo_seq;
       public          postgres    false    210            |           0    0    voo_id_voo_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.voo_id_voo_seq OWNED BY public.voo.id_voo;
          public          postgres    false    209            �           2604    169380    aeronaves id_aeronave    DEFAULT     ~   ALTER TABLE ONLY public.aeronaves ALTER COLUMN id_aeronave SET DEFAULT nextval('public.aeronaves_id_aeronave_seq'::regclass);
 D   ALTER TABLE public.aeronaves ALTER COLUMN id_aeronave DROP DEFAULT;
       public          postgres    false    216    215    216            �           2604    169465    funcionario id_funcionario    DEFAULT     �   ALTER TABLE ONLY public.funcionario ALTER COLUMN id_funcionario SET DEFAULT nextval('public.funcionario_id_funcionario_seq'::regclass);
 I   ALTER TABLE public.funcionario ALTER COLUMN id_funcionario DROP DEFAULT;
       public          postgres    false    231    232    232            �           2604    169401    hangares id_hangar    DEFAULT     x   ALTER TABLE ONLY public.hangares ALTER COLUMN id_hangar SET DEFAULT nextval('public.hangares_id_hangar_seq'::regclass);
 A   ALTER TABLE public.hangares ALTER COLUMN id_hangar DROP DEFAULT;
       public          postgres    false    220    219    220            �           2604    169394    manutencao id_manutencao    DEFAULT     �   ALTER TABLE ONLY public.manutencao ALTER COLUMN id_manutencao SET DEFAULT nextval('public.manutencao_id_manutencao_seq'::regclass);
 G   ALTER TABLE public.manutencao ALTER COLUMN id_manutencao DROP DEFAULT;
       public          postgres    false    217    218    218            �           2604    169472    notificacao id_notificacao    DEFAULT     �   ALTER TABLE ONLY public.notificacao ALTER COLUMN id_notificacao SET DEFAULT nextval('public.notificacao_id_notificacao_seq'::regclass);
 I   ALTER TABLE public.notificacao ALTER COLUMN id_notificacao DROP DEFAULT;
       public          postgres    false    233    234    234            �           2604    169338    passageiro id_passageiro    DEFAULT     �   ALTER TABLE ONLY public.passageiro ALTER COLUMN id_passageiro SET DEFAULT nextval('public.passageiro_id_passageiro_seq'::regclass);
 G   ALTER TABLE public.passageiro ALTER COLUMN id_passageiro DROP DEFAULT;
       public          postgres    false    212    211    212            �           2604    169408    pecas id_pecas    DEFAULT     p   ALTER TABLE ONLY public.pecas ALTER COLUMN id_pecas SET DEFAULT nextval('public.pecas_id_pecas_seq'::regclass);
 =   ALTER TABLE public.pecas ALTER COLUMN id_pecas DROP DEFAULT;
       public          postgres    false    221    222    222            �           2604    169430 $   pecas_manutencao id_pecas_manutencao    DEFAULT     �   ALTER TABLE ONLY public.pecas_manutencao ALTER COLUMN id_pecas_manutencao SET DEFAULT nextval('public.pecas_manutencao_id_pecas_manutencao_seq'::regclass);
 S   ALTER TABLE public.pecas_manutencao ALTER COLUMN id_pecas_manutencao DROP DEFAULT;
       public          postgres    false    227    228    228            �           2604    169422    problemas id_problema    DEFAULT     ~   ALTER TABLE ONLY public.problemas ALTER COLUMN id_problema SET DEFAULT nextval('public.problemas_id_problema_seq'::regclass);
 D   ALTER TABLE public.problemas ALTER COLUMN id_problema DROP DEFAULT;
       public          postgres    false    225    226    226            �           2604    169345    reserva id_reserva    DEFAULT     x   ALTER TABLE ONLY public.reserva ALTER COLUMN id_reserva SET DEFAULT nextval('public.reserva_id_reserva_seq'::regclass);
 A   ALTER TABLE public.reserva ALTER COLUMN id_reserva DROP DEFAULT;
       public          postgres    false    214    213    214            �           2604    169415    tarefas id_tarefa    DEFAULT     v   ALTER TABLE ONLY public.tarefas ALTER COLUMN id_tarefa SET DEFAULT nextval('public.tarefas_id_tarefa_seq'::regclass);
 @   ALTER TABLE public.tarefas ALTER COLUMN id_tarefa DROP DEFAULT;
       public          postgres    false    223    224    224            �           2604    169331 
   voo id_voo    DEFAULT     h   ALTER TABLE ONLY public.voo ALTER COLUMN id_voo SET DEFAULT nextval('public.voo_id_voo_seq'::regclass);
 9   ALTER TABLE public.voo ALTER COLUMN id_voo DROP DEFAULT;
       public          postgres    false    210    209    210            Z          0    169377 	   aeronaves 
   TABLE DATA           P   COPY public.aeronaves (id_aeronave, modelo, ano_fabricacao, estado) FROM stdin;
    public          postgres    false    216   �m       h          0    169462    funcionario 
   TABLE DATA           Q   COPY public.funcionario (id_funcionario, nome, email, id_manutencao) FROM stdin;
    public          postgres    false    232   )n       ^          0    169398    hangares 
   TABLE DATA           ?   COPY public.hangares (id_hangar, nome, capacidade) FROM stdin;
    public          postgres    false    220   �n       \          0    169391 
   manutencao 
   TABLE DATA           p   COPY public.manutencao (id_manutencao, id_aeronave, status, data, id_hangar, hora_inicio, hora_fim) FROM stdin;
    public          postgres    false    218   �n       j          0    169469    notificacao 
   TABLE DATA           ]   COPY public.notificacao (id_notificacao, id_equipa, descricao, data_notificacao) FROM stdin;
    public          postgres    false    234   o       V          0    169335 
   passageiro 
   TABLE DATA           x   COPY public.passageiro (id_passageiro, nome, sexo, data_nascimento, endereco, num_pa, nacionalidade, email) FROM stdin;
    public          postgres    false    212   3o       `          0    169405    pecas 
   TABLE DATA           7   COPY public.pecas (id_pecas, nome, estado) FROM stdin;
    public          postgres    false    222   p       f          0    169427    pecas_manutencao 
   TABLE DATA           X   COPY public.pecas_manutencao (id_pecas_manutencao, id_pecas, id_manutencao) FROM stdin;
    public          postgres    false    228   Qp       d          0    169419 	   problemas 
   TABLE DATA           J   COPY public.problemas (id_problema, descricao, id_manutencao) FROM stdin;
    public          postgres    false    226   tp       X          0    169342    reserva 
   TABLE DATA           �   COPY public.reserva (id_reserva, id_voo, id_passageiro, data_reserva, montante, data_pagamento, classe, numero_assento) FROM stdin;
    public          postgres    false    214   �p       b          0    169412    tarefas 
   TABLE DATA           F   COPY public.tarefas (id_tarefa, descricao, id_manutencao) FROM stdin;
    public          postgres    false    224   q       T          0    169328    voo 
   TABLE DATA           o   COPY public.voo (id_voo, data, capacidade, hora_partida, hora_chegada, gate_partida, gate_chegada) FROM stdin;
    public          postgres    false    210   @q       }           0    0    aeronaves_id_aeronave_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.aeronaves_id_aeronave_seq', 1, false);
          public          postgres    false    215            ~           0    0    funcionario_id_funcionario_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.funcionario_id_funcionario_seq', 3, true);
          public          postgres    false    231                       0    0    hangares_id_hangar_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.hangares_id_hangar_seq', 1, false);
          public          postgres    false    219            �           0    0    manutencao_id_manutencao_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.manutencao_id_manutencao_seq', 3, true);
          public          postgres    false    217            �           0    0    notificacao_id_notificacao_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public.notificacao_id_notificacao_seq', 1, false);
          public          postgres    false    233            �           0    0    passageiro_id_passageiro_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.passageiro_id_passageiro_seq', 3, true);
          public          postgres    false    211            �           0    0    pecas_id_pecas_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.pecas_id_pecas_seq', 5, true);
          public          postgres    false    221            �           0    0 (   pecas_manutencao_id_pecas_manutencao_seq    SEQUENCE SET     V   SELECT pg_catalog.setval('public.pecas_manutencao_id_pecas_manutencao_seq', 1, true);
          public          postgres    false    227            �           0    0    problemas_id_problema_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.problemas_id_problema_seq', 6, true);
          public          postgres    false    225            �           0    0    reserva_id_reserva_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.reserva_id_reserva_seq', 2, true);
          public          postgres    false    213            �           0    0    tarefas_id_tarefa_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.tarefas_id_tarefa_seq', 3, true);
          public          postgres    false    223            �           0    0    voo_id_voo_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.voo_id_voo_seq', 1, true);
          public          postgres    false    209            �           2606    169382    aeronaves aeronaves_pkey 
   CONSTRAINT     _   ALTER TABLE ONLY public.aeronaves
    ADD CONSTRAINT aeronaves_pkey PRIMARY KEY (id_aeronave);
 B   ALTER TABLE ONLY public.aeronaves DROP CONSTRAINT aeronaves_pkey;
       public            postgres    false    216            �           2606    169467    funcionario funcionario_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.funcionario
    ADD CONSTRAINT funcionario_pkey PRIMARY KEY (id_funcionario);
 F   ALTER TABLE ONLY public.funcionario DROP CONSTRAINT funcionario_pkey;
       public            postgres    false    232            �           2606    169403    hangares hangares_pkey 
   CONSTRAINT     [   ALTER TABLE ONLY public.hangares
    ADD CONSTRAINT hangares_pkey PRIMARY KEY (id_hangar);
 @   ALTER TABLE ONLY public.hangares DROP CONSTRAINT hangares_pkey;
       public            postgres    false    220            �           2606    169396    manutencao manutencao_pkey 
   CONSTRAINT     c   ALTER TABLE ONLY public.manutencao
    ADD CONSTRAINT manutencao_pkey PRIMARY KEY (id_manutencao);
 D   ALTER TABLE ONLY public.manutencao DROP CONSTRAINT manutencao_pkey;
       public            postgres    false    218            �           2606    169474    notificacao notificacao_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.notificacao
    ADD CONSTRAINT notificacao_pkey PRIMARY KEY (id_notificacao);
 F   ALTER TABLE ONLY public.notificacao DROP CONSTRAINT notificacao_pkey;
       public            postgres    false    234            �           2606    169340    passageiro passageiro_pkey 
   CONSTRAINT     c   ALTER TABLE ONLY public.passageiro
    ADD CONSTRAINT passageiro_pkey PRIMARY KEY (id_passageiro);
 D   ALTER TABLE ONLY public.passageiro DROP CONSTRAINT passageiro_pkey;
       public            postgres    false    212            �           2606    169432 &   pecas_manutencao pecas_manutencao_pkey 
   CONSTRAINT     u   ALTER TABLE ONLY public.pecas_manutencao
    ADD CONSTRAINT pecas_manutencao_pkey PRIMARY KEY (id_pecas_manutencao);
 P   ALTER TABLE ONLY public.pecas_manutencao DROP CONSTRAINT pecas_manutencao_pkey;
       public            postgres    false    228            �           2606    169410    pecas pecas_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.pecas
    ADD CONSTRAINT pecas_pkey PRIMARY KEY (id_pecas);
 :   ALTER TABLE ONLY public.pecas DROP CONSTRAINT pecas_pkey;
       public            postgres    false    222            �           2606    169424    problemas problemas_pkey 
   CONSTRAINT     _   ALTER TABLE ONLY public.problemas
    ADD CONSTRAINT problemas_pkey PRIMARY KEY (id_problema);
 B   ALTER TABLE ONLY public.problemas DROP CONSTRAINT problemas_pkey;
       public            postgres    false    226            �           2606    169349    reserva reserva_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.reserva
    ADD CONSTRAINT reserva_pkey PRIMARY KEY (id_reserva);
 >   ALTER TABLE ONLY public.reserva DROP CONSTRAINT reserva_pkey;
       public            postgres    false    214            �           2606    169417    tarefas tarefas_pkey 
   CONSTRAINT     Y   ALTER TABLE ONLY public.tarefas
    ADD CONSTRAINT tarefas_pkey PRIMARY KEY (id_tarefa);
 >   ALTER TABLE ONLY public.tarefas DROP CONSTRAINT tarefas_pkey;
       public            postgres    false    224            �           2606    169333    voo voo_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.voo
    ADD CONSTRAINT voo_pkey PRIMARY KEY (id_voo);
 6   ALTER TABLE ONLY public.voo DROP CONSTRAINT voo_pkey;
       public            postgres    false    210            �           2606    169355    reserva fk_reserva_idpassageiro    FK CONSTRAINT     �   ALTER TABLE ONLY public.reserva
    ADD CONSTRAINT fk_reserva_idpassageiro FOREIGN KEY (id_passageiro) REFERENCES public.passageiro(id_passageiro);
 I   ALTER TABLE ONLY public.reserva DROP CONSTRAINT fk_reserva_idpassageiro;
       public          postgres    false    214    3246    212            �           2606    169350    reserva fk_reserva_idvoos    FK CONSTRAINT     y   ALTER TABLE ONLY public.reserva
    ADD CONSTRAINT fk_reserva_idvoos FOREIGN KEY (id_voo) REFERENCES public.voo(id_voo);
 C   ALTER TABLE ONLY public.reserva DROP CONSTRAINT fk_reserva_idvoos;
       public          postgres    false    214    3244    210            Z   &   x�3�t�O��KW076�4204�(��+������ x�^      h   W   x�3�t��)��Sp��K,�+����L�$�$8��&f��%��rrqz�U$*�d&�Tf��_��
T�XT������=... s�*�      ^      x�3��H�KO,Rp�4����� +=�      \   L   x�3�4�tLO�KIL��4202�54�54��Y ����e�����P� �������Z�Z#��=... �I�      j      x������ � �      V   �   x���A
�0E��S�)I�R�S*
B� �rk�����)�u<��-�h���3�����j���WW��C�a,D8F$������e#����"��l?1S~V]�/�73��-.�KQsY��=:��
嬾�I�C�B���n��]'�(I��ҭ�4�ÆF�!�ie�v��`��c�p��#׏�i!�4����G�͚�)�<�hꅳ      `   0   x�3�H=�<Q!�Ӑ��v�M�l ����4�2��+��1z\\\ p9�      f      x�3�4�4����� �X      d   8   x�3�(�O�I�MT0�4�2Bp��\c8�1Aș ���9�k�Y ��1z\\\ �8�      X   ?   x����0�f�����zA���1ȅ�y�<���a�{R�Z(���}깨k�|m!�?�I      b   %   x�3�I,JMKT0�4�2�q��c�ȉ���� �
      T   2   x�3�4202�50�52�445�4��20 "mNCc�Ʉ�т+F��� ��     