PGDMP                     	    x         
   biblioteca    10.14    10.14 �    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                       false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                       false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                       false            �           1262    24993 
   biblioteca    DATABASE     �   CREATE DATABASE biblioteca WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'Spanish_Colombia.1252' LC_CTYPE = 'Spanish_Colombia.1252';
    DROP DATABASE biblioteca;
             postgres    false                        2615    2200    public    SCHEMA        CREATE SCHEMA public;
    DROP SCHEMA public;
             postgres    false            �           0    0    SCHEMA public    COMMENT     6   COMMENT ON SCHEMA public IS 'standard public schema';
                  postgres    false    3                        3079    12924    plpgsql 	   EXTENSION     ?   CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;
    DROP EXTENSION plpgsql;
                  false            �           0    0    EXTENSION plpgsql    COMMENT     @   COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';
                       false    1            �            1259    25007    Autor_autores    TABLE     �   CREATE TABLE public."Autor_autores" (
    id integer NOT NULL,
    nombre character varying(100) NOT NULL,
    nacionalidad character varying(50) NOT NULL
);
 #   DROP TABLE public."Autor_autores";
       public         admin    false    3            �            1259    25005    Autor_autores_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Autor_autores_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public."Autor_autores_id_seq";
       public       admin    false    199    3            �           0    0    Autor_autores_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public."Autor_autores_id_seq" OWNED BY public."Autor_autores".id;
            public       admin    false    198            �            1259    25015    Libro_libros    TABLE        CREATE TABLE public."Libro_libros" (
    id integer NOT NULL,
    codigo integer NOT NULL,
    titulo character varying(100) NOT NULL,
    isbn character varying(30) NOT NULL,
    editorial character varying(60) NOT NULL,
    "numPags" integer NOT NULL
);
 "   DROP TABLE public."Libro_libros";
       public         admin    false    3            �            1259    25013    Libro_libros_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Libro_libros_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public."Libro_libros_id_seq";
       public       admin    false    201    3            �           0    0    Libro_libros_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public."Libro_libros_id_seq" OWNED BY public."Libro_libros".id;
            public       admin    false    200            �            1259    25031    Prestamos_prestamos    TABLE     �   CREATE TABLE public."Prestamos_prestamos" (
    id integer NOT NULL,
    "fechaPrestamo" date NOT NULL,
    "fechaDevolucion" date NOT NULL,
    "idLibro_id" integer NOT NULL,
    "idUsuario_id" integer NOT NULL
);
 )   DROP TABLE public."Prestamos_prestamos";
       public         admin    false    3            �            1259    25029    Prestamos_prestamos_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Prestamos_prestamos_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public."Prestamos_prestamos_id_seq";
       public       admin    false    3    205            �           0    0    Prestamos_prestamos_id_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public."Prestamos_prestamos_id_seq" OWNED BY public."Prestamos_prestamos".id;
            public       admin    false    204            �            1259    25023    Usuario_usuarios    TABLE       CREATE TABLE public."Usuario_usuarios" (
    id integer NOT NULL,
    "numUsuario" integer NOT NULL,
    ntf character varying(20) NOT NULL,
    nombre character varying(100) NOT NULL,
    direccion character varying(255) NOT NULL,
    telefono character varying(20) NOT NULL
);
 &   DROP TABLE public."Usuario_usuarios";
       public         admin    false    3            �            1259    25021    Usuario_usuarios_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Usuario_usuarios_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public."Usuario_usuarios_id_seq";
       public       admin    false    3    203            �           0    0    Usuario_usuarios_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public."Usuario_usuarios_id_seq" OWNED BY public."Usuario_usuarios".id;
            public       admin    false    202            �            1259    25081 
   auth_group    TABLE     f   CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);
    DROP TABLE public.auth_group;
       public         admin    false    3            �            1259    25079    auth_group_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.auth_group_id_seq;
       public       admin    false    211    3            �           0    0    auth_group_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;
            public       admin    false    210            �            1259    25091    auth_group_permissions    TABLE     �   CREATE TABLE public.auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);
 *   DROP TABLE public.auth_group_permissions;
       public         admin    false    3            �            1259    25089    auth_group_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_group_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.auth_group_permissions_id_seq;
       public       admin    false    3    213            �           0    0    auth_group_permissions_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;
            public       admin    false    212            �            1259    25073    auth_permission    TABLE     �   CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);
 #   DROP TABLE public.auth_permission;
       public         admin    false    3            �            1259    25071    auth_permission_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.auth_permission_id_seq;
       public       admin    false    209    3            �           0    0    auth_permission_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;
            public       admin    false    208            �            1259    25099 	   auth_user    TABLE     �  CREATE TABLE public.auth_user (
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
       public         admin    false    3            �            1259    25109    auth_user_groups    TABLE        CREATE TABLE public.auth_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);
 $   DROP TABLE public.auth_user_groups;
       public         admin    false    3            �            1259    25107    auth_user_groups_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_user_groups_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.auth_user_groups_id_seq;
       public       admin    false    217    3            �           0    0    auth_user_groups_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.auth_user_groups_id_seq OWNED BY public.auth_user_groups.id;
            public       admin    false    216            �            1259    25097    auth_user_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.auth_user_id_seq;
       public       admin    false    3    215            �           0    0    auth_user_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.auth_user_id_seq OWNED BY public.auth_user.id;
            public       admin    false    214            �            1259    25117    auth_user_user_permissions    TABLE     �   CREATE TABLE public.auth_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);
 .   DROP TABLE public.auth_user_user_permissions;
       public         admin    false    3            �            1259    25115 !   auth_user_user_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_user_user_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.auth_user_user_permissions_id_seq;
       public       admin    false    219    3            �           0    0 !   auth_user_user_permissions_id_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public.auth_user_user_permissions_id_seq OWNED BY public.auth_user_user_permissions.id;
            public       admin    false    218            �            1259    25177    django_admin_log    TABLE     �  CREATE TABLE public.django_admin_log (
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
       public         admin    false    3            �            1259    25175    django_admin_log_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.django_admin_log_id_seq;
       public       admin    false    3    221            �           0    0    django_admin_log_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;
            public       admin    false    220            �            1259    25063    django_content_type    TABLE     �   CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);
 '   DROP TABLE public.django_content_type;
       public         admin    false    3            �            1259    25061    django_content_type_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.django_content_type_id_seq;
       public       admin    false    3    207            �           0    0    django_content_type_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;
            public       admin    false    206            �            1259    24996    django_migrations    TABLE     �   CREATE TABLE public.django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);
 %   DROP TABLE public.django_migrations;
       public         admin    false    3            �            1259    24994    django_migrations_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.django_migrations_id_seq;
       public       admin    false    197    3            �           0    0    django_migrations_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;
            public       admin    false    196            �            1259    25208    django_session    TABLE     �   CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);
 "   DROP TABLE public.django_session;
       public         admin    false    3            �
           2604    25010    Autor_autores id    DEFAULT     x   ALTER TABLE ONLY public."Autor_autores" ALTER COLUMN id SET DEFAULT nextval('public."Autor_autores_id_seq"'::regclass);
 A   ALTER TABLE public."Autor_autores" ALTER COLUMN id DROP DEFAULT;
       public       admin    false    198    199    199            �
           2604    25018    Libro_libros id    DEFAULT     v   ALTER TABLE ONLY public."Libro_libros" ALTER COLUMN id SET DEFAULT nextval('public."Libro_libros_id_seq"'::regclass);
 @   ALTER TABLE public."Libro_libros" ALTER COLUMN id DROP DEFAULT;
       public       admin    false    201    200    201            �
           2604    25034    Prestamos_prestamos id    DEFAULT     �   ALTER TABLE ONLY public."Prestamos_prestamos" ALTER COLUMN id SET DEFAULT nextval('public."Prestamos_prestamos_id_seq"'::regclass);
 G   ALTER TABLE public."Prestamos_prestamos" ALTER COLUMN id DROP DEFAULT;
       public       admin    false    204    205    205            �
           2604    25026    Usuario_usuarios id    DEFAULT     ~   ALTER TABLE ONLY public."Usuario_usuarios" ALTER COLUMN id SET DEFAULT nextval('public."Usuario_usuarios_id_seq"'::regclass);
 D   ALTER TABLE public."Usuario_usuarios" ALTER COLUMN id DROP DEFAULT;
       public       admin    false    203    202    203            �
           2604    25084    auth_group id    DEFAULT     n   ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);
 <   ALTER TABLE public.auth_group ALTER COLUMN id DROP DEFAULT;
       public       admin    false    211    210    211            �
           2604    25094    auth_group_permissions id    DEFAULT     �   ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);
 H   ALTER TABLE public.auth_group_permissions ALTER COLUMN id DROP DEFAULT;
       public       admin    false    212    213    213            �
           2604    25076    auth_permission id    DEFAULT     x   ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);
 A   ALTER TABLE public.auth_permission ALTER COLUMN id DROP DEFAULT;
       public       admin    false    208    209    209            �
           2604    25102    auth_user id    DEFAULT     l   ALTER TABLE ONLY public.auth_user ALTER COLUMN id SET DEFAULT nextval('public.auth_user_id_seq'::regclass);
 ;   ALTER TABLE public.auth_user ALTER COLUMN id DROP DEFAULT;
       public       admin    false    214    215    215            �
           2604    25112    auth_user_groups id    DEFAULT     z   ALTER TABLE ONLY public.auth_user_groups ALTER COLUMN id SET DEFAULT nextval('public.auth_user_groups_id_seq'::regclass);
 B   ALTER TABLE public.auth_user_groups ALTER COLUMN id DROP DEFAULT;
       public       admin    false    216    217    217            �
           2604    25120    auth_user_user_permissions id    DEFAULT     �   ALTER TABLE ONLY public.auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_user_user_permissions_id_seq'::regclass);
 L   ALTER TABLE public.auth_user_user_permissions ALTER COLUMN id DROP DEFAULT;
       public       admin    false    218    219    219            �
           2604    25180    django_admin_log id    DEFAULT     z   ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);
 B   ALTER TABLE public.django_admin_log ALTER COLUMN id DROP DEFAULT;
       public       admin    false    221    220    221            �
           2604    25066    django_content_type id    DEFAULT     �   ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);
 E   ALTER TABLE public.django_content_type ALTER COLUMN id DROP DEFAULT;
       public       admin    false    207    206    207            �
           2604    24999    django_migrations id    DEFAULT     |   ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);
 C   ALTER TABLE public.django_migrations ALTER COLUMN id DROP DEFAULT;
       public       admin    false    196    197    197            �          0    25007    Autor_autores 
   TABLE DATA               C   COPY public."Autor_autores" (id, nombre, nacionalidad) FROM stdin;
    public       admin    false    199   ��       �          0    25015    Libro_libros 
   TABLE DATA               X   COPY public."Libro_libros" (id, codigo, titulo, isbn, editorial, "numPags") FROM stdin;
    public       admin    false    201   �       �          0    25031    Prestamos_prestamos 
   TABLE DATA               u   COPY public."Prestamos_prestamos" (id, "fechaPrestamo", "fechaDevolucion", "idLibro_id", "idUsuario_id") FROM stdin;
    public       admin    false    205   ��       �          0    25023    Usuario_usuarios 
   TABLE DATA               `   COPY public."Usuario_usuarios" (id, "numUsuario", ntf, nombre, direccion, telefono) FROM stdin;
    public       admin    false    203   �       �          0    25081 
   auth_group 
   TABLE DATA               .   COPY public.auth_group (id, name) FROM stdin;
    public       admin    false    211   H�       �          0    25091    auth_group_permissions 
   TABLE DATA               M   COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
    public       admin    false    213   e�       �          0    25073    auth_permission 
   TABLE DATA               N   COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
    public       admin    false    209   ��       �          0    25099 	   auth_user 
   TABLE DATA               �   COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
    public       admin    false    215   '�       �          0    25109    auth_user_groups 
   TABLE DATA               A   COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
    public       admin    false    217   ز       �          0    25117    auth_user_user_permissions 
   TABLE DATA               P   COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
    public       admin    false    219   ��       �          0    25177    django_admin_log 
   TABLE DATA               �   COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
    public       admin    false    221   �       �          0    25063    django_content_type 
   TABLE DATA               C   COPY public.django_content_type (id, app_label, model) FROM stdin;
    public       admin    false    207   /�       �          0    24996    django_migrations 
   TABLE DATA               C   COPY public.django_migrations (id, app, name, applied) FROM stdin;
    public       admin    false    197   ��       �          0    25208    django_session 
   TABLE DATA               P   COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
    public       admin    false    222   ��       �           0    0    Autor_autores_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public."Autor_autores_id_seq"', 13, true);
            public       admin    false    198            �           0    0    Libro_libros_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public."Libro_libros_id_seq"', 12, true);
            public       admin    false    200            �           0    0    Prestamos_prestamos_id_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public."Prestamos_prestamos_id_seq"', 11, true);
            public       admin    false    204            �           0    0    Usuario_usuarios_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public."Usuario_usuarios_id_seq"', 10, true);
            public       admin    false    202            �           0    0    auth_group_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);
            public       admin    false    210            �           0    0    auth_group_permissions_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);
            public       admin    false    212            �           0    0    auth_permission_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.auth_permission_id_seq', 40, true);
            public       admin    false    208            �           0    0    auth_user_groups_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 1, false);
            public       admin    false    216            �           0    0    auth_user_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.auth_user_id_seq', 1, true);
            public       admin    false    214            �           0    0 !   auth_user_user_permissions_id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);
            public       admin    false    218            �           0    0    django_admin_log_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.django_admin_log_id_seq', 1, false);
            public       admin    false    220            �           0    0    django_content_type_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.django_content_type_id_seq', 10, true);
            public       admin    false    206            �           0    0    django_migrations_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.django_migrations_id_seq', 23, true);
            public       admin    false    196            �
           2606    25012     Autor_autores Autor_autores_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public."Autor_autores"
    ADD CONSTRAINT "Autor_autores_pkey" PRIMARY KEY (id);
 N   ALTER TABLE ONLY public."Autor_autores" DROP CONSTRAINT "Autor_autores_pkey";
       public         admin    false    199            �
           2606    25020    Libro_libros Libro_libros_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public."Libro_libros"
    ADD CONSTRAINT "Libro_libros_pkey" PRIMARY KEY (id);
 L   ALTER TABLE ONLY public."Libro_libros" DROP CONSTRAINT "Libro_libros_pkey";
       public         admin    false    201            �
           2606    25036 ,   Prestamos_prestamos Prestamos_prestamos_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY public."Prestamos_prestamos"
    ADD CONSTRAINT "Prestamos_prestamos_pkey" PRIMARY KEY (id);
 Z   ALTER TABLE ONLY public."Prestamos_prestamos" DROP CONSTRAINT "Prestamos_prestamos_pkey";
       public         admin    false    205            �
           2606    25028 &   Usuario_usuarios Usuario_usuarios_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public."Usuario_usuarios"
    ADD CONSTRAINT "Usuario_usuarios_pkey" PRIMARY KEY (id);
 T   ALTER TABLE ONLY public."Usuario_usuarios" DROP CONSTRAINT "Usuario_usuarios_pkey";
       public         admin    false    203            �
           2606    25206    auth_group auth_group_name_key 
   CONSTRAINT     Y   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);
 H   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_name_key;
       public         admin    false    211            �
           2606    25133 R   auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);
 |   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq;
       public         admin    false    213    213            �
           2606    25096 2   auth_group_permissions auth_group_permissions_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_pkey;
       public         admin    false    213            �
           2606    25086    auth_group auth_group_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_pkey;
       public         admin    false    211            �
           2606    25124 F   auth_permission auth_permission_content_type_id_codename_01ab375a_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);
 p   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq;
       public         admin    false    209    209            �
           2606    25078 $   auth_permission auth_permission_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_pkey;
       public         admin    false    209            �
           2606    25114 &   auth_user_groups auth_user_groups_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_pkey;
       public         admin    false    217            �
           2606    25148 @   auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);
 j   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq;
       public         admin    false    217    217            �
           2606    25104    auth_user auth_user_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_pkey;
       public         admin    false    215            �
           2606    25122 :   auth_user_user_permissions auth_user_user_permissions_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);
 d   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_pkey;
       public         admin    false    219            �
           2606    25162 Y   auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);
 �   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq;
       public         admin    false    219    219            �
           2606    25200     auth_user auth_user_username_key 
   CONSTRAINT     _   ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);
 J   ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_username_key;
       public         admin    false    215            �
           2606    25186 &   django_admin_log django_admin_log_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_pkey;
       public         admin    false    221            �
           2606    25070 E   django_content_type django_content_type_app_label_model_76bd3d3b_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);
 o   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq;
       public         admin    false    207    207            �
           2606    25068 ,   django_content_type django_content_type_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_pkey;
       public         admin    false    207            �
           2606    25004 (   django_migrations django_migrations_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.django_migrations DROP CONSTRAINT django_migrations_pkey;
       public         admin    false    197                       2606    25215 "   django_session django_session_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);
 L   ALTER TABLE ONLY public.django_session DROP CONSTRAINT django_session_pkey;
       public         admin    false    222            �
           1259    25047 '   Prestamos_prestamos_idLibro_id_93ebaeb7    INDEX     s   CREATE INDEX "Prestamos_prestamos_idLibro_id_93ebaeb7" ON public."Prestamos_prestamos" USING btree ("idLibro_id");
 =   DROP INDEX public."Prestamos_prestamos_idLibro_id_93ebaeb7";
       public         admin    false    205            �
           1259    25048 )   Prestamos_prestamos_idUsuario_id_a4ef3c7b    INDEX     w   CREATE INDEX "Prestamos_prestamos_idUsuario_id_a4ef3c7b" ON public."Prestamos_prestamos" USING btree ("idUsuario_id");
 ?   DROP INDEX public."Prestamos_prestamos_idUsuario_id_a4ef3c7b";
       public         admin    false    205            �
           1259    25207    auth_group_name_a6ea08ec_like    INDEX     h   CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);
 1   DROP INDEX public.auth_group_name_a6ea08ec_like;
       public         admin    false    211            �
           1259    25144 (   auth_group_permissions_group_id_b120cbf9    INDEX     o   CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);
 <   DROP INDEX public.auth_group_permissions_group_id_b120cbf9;
       public         admin    false    213            �
           1259    25145 -   auth_group_permissions_permission_id_84c5c92e    INDEX     y   CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);
 A   DROP INDEX public.auth_group_permissions_permission_id_84c5c92e;
       public         admin    false    213            �
           1259    25130 (   auth_permission_content_type_id_2f476e4b    INDEX     o   CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);
 <   DROP INDEX public.auth_permission_content_type_id_2f476e4b;
       public         admin    false    209            �
           1259    25160 "   auth_user_groups_group_id_97559544    INDEX     c   CREATE INDEX auth_user_groups_group_id_97559544 ON public.auth_user_groups USING btree (group_id);
 6   DROP INDEX public.auth_user_groups_group_id_97559544;
       public         admin    false    217            �
           1259    25159 !   auth_user_groups_user_id_6a12ed8b    INDEX     a   CREATE INDEX auth_user_groups_user_id_6a12ed8b ON public.auth_user_groups USING btree (user_id);
 5   DROP INDEX public.auth_user_groups_user_id_6a12ed8b;
       public         admin    false    217            �
           1259    25174 1   auth_user_user_permissions_permission_id_1fbb5f2c    INDEX     �   CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON public.auth_user_user_permissions USING btree (permission_id);
 E   DROP INDEX public.auth_user_user_permissions_permission_id_1fbb5f2c;
       public         admin    false    219            �
           1259    25173 +   auth_user_user_permissions_user_id_a95ead1b    INDEX     u   CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON public.auth_user_user_permissions USING btree (user_id);
 ?   DROP INDEX public.auth_user_user_permissions_user_id_a95ead1b;
       public         admin    false    219            �
           1259    25201     auth_user_username_6821ab7c_like    INDEX     n   CREATE INDEX auth_user_username_6821ab7c_like ON public.auth_user USING btree (username varchar_pattern_ops);
 4   DROP INDEX public.auth_user_username_6821ab7c_like;
       public         admin    false    215            �
           1259    25197 )   django_admin_log_content_type_id_c4bce8eb    INDEX     q   CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);
 =   DROP INDEX public.django_admin_log_content_type_id_c4bce8eb;
       public         admin    false    221                        1259    25198 !   django_admin_log_user_id_c564eba6    INDEX     a   CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);
 5   DROP INDEX public.django_admin_log_user_id_c564eba6;
       public         admin    false    221                       1259    25217 #   django_session_expire_date_a5c62663    INDEX     e   CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);
 7   DROP INDEX public.django_session_expire_date_a5c62663;
       public         admin    false    222                       1259    25216 (   django_session_session_key_c0390e0f_like    INDEX     ~   CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);
 <   DROP INDEX public.django_session_session_key_c0390e0f_like;
       public         admin    false    222                       2606    25037 N   Prestamos_prestamos Prestamos_prestamos_idLibro_id_93ebaeb7_fk_Libro_libros_id    FK CONSTRAINT     �   ALTER TABLE ONLY public."Prestamos_prestamos"
    ADD CONSTRAINT "Prestamos_prestamos_idLibro_id_93ebaeb7_fk_Libro_libros_id" FOREIGN KEY ("idLibro_id") REFERENCES public."Libro_libros"(id) DEFERRABLE INITIALLY DEFERRED;
 |   ALTER TABLE ONLY public."Prestamos_prestamos" DROP CONSTRAINT "Prestamos_prestamos_idLibro_id_93ebaeb7_fk_Libro_libros_id";
       public       admin    false    205    201    2769                       2606    25042 J   Prestamos_prestamos Prestamos_prestamos_idUsuario_id_a4ef3c7b_fk_Usuario_u    FK CONSTRAINT     �   ALTER TABLE ONLY public."Prestamos_prestamos"
    ADD CONSTRAINT "Prestamos_prestamos_idUsuario_id_a4ef3c7b_fk_Usuario_u" FOREIGN KEY ("idUsuario_id") REFERENCES public."Usuario_usuarios"(id) DEFERRABLE INITIALLY DEFERRED;
 x   ALTER TABLE ONLY public."Prestamos_prestamos" DROP CONSTRAINT "Prestamos_prestamos_idUsuario_id_a4ef3c7b_fk_Usuario_u";
       public       admin    false    2771    203    205            	           2606    25139 O   auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm;
       public       admin    false    209    213    2784                       2606    25134 P   auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id;
       public       admin    false    213    211    2789                       2606    25125 E   auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 o   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co;
       public       admin    false    2779    209    207                       2606    25154 D   auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 n   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id;
       public       admin    false    211    2789    217            
           2606    25149 B   auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id;
       public       admin    false    215    217    2797                       2606    25168 S   auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 }   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm;
       public       admin    false    2784    219    209                       2606    25163 V   auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id;
       public       admin    false    215    219    2797                       2606    25187 G   django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 q   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co;
       public       admin    false    2779    207    221                       2606    25192 B   django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id;
       public       admin    false    215    2797    221            �     x�=�MN�@FמS�	"��l����P��ذq�X��OPn�%Kΐ�1A���I~��RX;�H?�z>F�8m�֩	l1�3G�v0�lh�vj
��ښ���V�X$�pH�%l�
dtI:#yG�Ń�b,u+<
��
�`���@=dθ��^�3���}�'�-����_^��:���=
��T\8u�D�޹3*�5�`�Ul��B����h�@��T�J/ G1���)Ma)h{���	a+XErO�@�Q��JbЖ��4�L�pQ�G���EM03�g�^��O�{      �   �  x���Ar�0E��)xy$Jrڥ���Z�L-���.E:��N��#tz_���K��J���Y��O�5yg&8<g
6>쌼�4�u:NP�P,�G9Ff#ߤE��-^\�u.J�j��N~�t��L�n��=¶�3�oi�M�Ƅ��L�G<�! 9w�@�U��Ҍ���z����5�*�!�����OI�{k�m�٥��s �4�	�k�%j,��*��G$Sf2��3�J�n�0I��Sn@�*QV�5�Hӌ��d��������=,Y���U�4\5�;/.>�h?�pץ���<ZGn��D��4x �,���*x��Nў�[�t��.�u0�<��E�ĩ����731����J�r4���_��?��4'�&2�8��0X��1��6�-��n�@���ׅ�7��h      �   c   x�u���0��.�8m݅�� 	x��������bzc@�)��Ȟ�.L_/YCc/nvt���?�^`p+؆�^�]llBF��o䘔��Ԃ�J�j�3�      �   3  x�m��j�0���S�:�ir,��n��cD�2w����<��t�v����>9
�9����wW�b>"��2�X�A�&^}�����ra�aKqJ=�ѥ�0ko<Fl�;q۔(��Jn1�ց6<�*m�e�}�x������%a�;�*SbZ8e44P[x��O=�4pW�u݈��1���Z�@�qD��}����S�m8�A�^�X�F.�ܣ��闋��'��T�������U�C�����Xފ�����	��@�>��w��5ˣ
��7��Ǖq�':a�(7	�g�η_������      �      x������ � �      �      x������ � �      �   �  x�]��n�0����	���z�Qibm�!��l��/u���'����>���n��1ޫ0,��K�W�����O7܃�rK��[x�ł�%`��o��n�g�)�g?��8�դ-g@�S�Q��{EC����ly��:���N˕9y�SAH��ZT
�4n�`�Ct-
�?��z?Mi}�z;�<�Mc\��G�|�%��jyM��рZ�����$d�������z'�u��z��P�*�Mޅ!O�L�#=�T�B+F$��;��;��jq&��d��P9<�T��GG���[�1�ٝP�*hL��!�L�#�T�B!Ft��.���L	�%4��3�I/�&�r�hR�%�@��)�.�3A���}*hL�X�'aM�[�'f[�xC����� �9��      �   �   x�]��
�@����S�p����Q!H�ˢ��6���������ڵ�?#Mv+J~~^S����IL�V�	�8��U��;,�q:]�Ĉ��RZA���?����p��2p��0� ���:@�HZԕ%����N���?��t��z*-�h�ɣ�~Q.�      �      x������ � �      �      x������ � �      �      x������ � �      �   �   x�ML��0�}�(oFv�.l,���#�����*��Sw����qr��P�K�u�fQ�Kҩ���b���HoI^g>f���k[�t�/�'4\�V\t�eÕV�F��3�-���0�Q^� ?��>�      �   �  x���͎� ���S��{��;�n���h�x�l�=��}�8$ո�7���q���y�Aa�79�5t��H�7L_�|!�$����H���~���*Kh�3�&�="�@�,b͏`�dz�es�b��+#ڤu�`D�Ƅ�U�Bd4g?Lv���hwܭ8�Y)�t������$+dc.��%�"�ŞzH��|�������V��\�B/�b��$	�9O���3�>�{wN��(��!��F�~��O�`z����0���u�z��w1fS�{�;;��U�w�,���>�7���0J���aÞ1�S�qZ��[ �����S�ߥ��n��LծA�@
���BM�D�sl�� �L~�X�|��]LZ�L����M���sFA��ǲ��j:9���v�JR_2ڃ���	��0ZPm���-т���<������>��z>���@�@c�\՛;�8m^VX��v�usa�Ԣ� �:���,�a      �   	  x��Yr�0  �o9E/��� �J�
eG�3�EV%����}O��F�n66:�o��|,��O]��Ӓ�����B+��Pf�n��a��`�����#6�[t�~�����N��G�4�z(����xP�>�Y����%��4�՘�����:by���qVN�_���"wKt~�X�ա퐤�О����VZd�7awA�0���.�����O�4�u�$� :�//w"�,X��@@�P�TLl�H_]� $U�^K���^&     