PGDMP     1    4    	            z            pelam    14.2    14.2 ]    l           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            m           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            n           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            o           1262    16524    pelam    DATABASE     h   CREATE DATABASE pelam WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'Indonesian_Indonesia.1252';
    DROP DATABASE pelam;
                asoko2    false            �            1259    16525    adonis_schema    TABLE     �   CREATE TABLE public.adonis_schema (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    batch integer NOT NULL,
    migration_time timestamp with time zone DEFAULT CURRENT_TIMESTAMP
);
 !   DROP TABLE public.adonis_schema;
       public         heap    asoko2    false            �            1259    16529    adonis_schema_id_seq    SEQUENCE     �   CREATE SEQUENCE public.adonis_schema_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.adonis_schema_id_seq;
       public          asoko2    false    209            p           0    0    adonis_schema_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.adonis_schema_id_seq OWNED BY public.adonis_schema.id;
          public          asoko2    false    210            �            1259    16530    adonis_schema_versions    TABLE     M   CREATE TABLE public.adonis_schema_versions (
    version integer NOT NULL
);
 *   DROP TABLE public.adonis_schema_versions;
       public         heap    asoko2    false            �            1259    16533 
   api_tokens    TABLE     *  CREATE TABLE public.api_tokens (
    id integer NOT NULL,
    user_id integer,
    name character varying(255) NOT NULL,
    type character varying(255) NOT NULL,
    token character varying(64) NOT NULL,
    expires_at timestamp with time zone,
    created_at timestamp with time zone NOT NULL
);
    DROP TABLE public.api_tokens;
       public         heap    asoko2    false            �            1259    16538    api_tokens_id_seq    SEQUENCE     �   CREATE SEQUENCE public.api_tokens_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.api_tokens_id_seq;
       public          asoko2    false    212            q           0    0    api_tokens_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.api_tokens_id_seq OWNED BY public.api_tokens.id;
          public          asoko2    false    213            �            1259    16539 	   domisilis    TABLE     �   CREATE TABLE public.domisilis (
    id integer NOT NULL,
    pemohon_nik character varying(255),
    keperluan character varying(255),
    created_at timestamp with time zone,
    updated_at timestamp with time zone,
    status integer DEFAULT 0
);
    DROP TABLE public.domisilis;
       public         heap    asoko2    false            �            1259    16544    domisilis_id_seq    SEQUENCE     �   CREATE SEQUENCE public.domisilis_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.domisilis_id_seq;
       public          asoko2    false    214            r           0    0    domisilis_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.domisilis_id_seq OWNED BY public.domisilis.id;
          public          asoko2    false    215            �            1259    16545    kehilangan_kks    TABLE       CREATE TABLE public.kehilangan_kks (
    id integer NOT NULL,
    pemohon_nik character varying(255),
    keterangan character varying(255),
    ktp character varying(255),
    created_at timestamp with time zone,
    updated_at timestamp with time zone,
    status integer DEFAULT 0
);
 "   DROP TABLE public.kehilangan_kks;
       public         heap    asoko2    false            �            1259    16550    kehilangan_kks_id_seq    SEQUENCE     �   CREATE SEQUENCE public.kehilangan_kks_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.kehilangan_kks_id_seq;
       public          asoko2    false    216            s           0    0    kehilangan_kks_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.kehilangan_kks_id_seq OWNED BY public.kehilangan_kks.id;
          public          asoko2    false    217            �            1259    16830    keterangans    TABLE     
  CREATE TABLE public.keterangans (
    id integer NOT NULL,
    jenis_permohonan character varying(255),
    keterangan text,
    permohonan_id integer,
    created_at timestamp with time zone,
    updated_at timestamp with time zone,
    status integer DEFAULT 0
);
    DROP TABLE public.keterangans;
       public         heap    asoko2    false            �            1259    16829    keterangans_id_seq    SEQUENCE     �   CREATE SEQUENCE public.keterangans_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.keterangans_id_seq;
       public          asoko2    false    231            t           0    0    keterangans_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.keterangans_id_seq OWNED BY public.keterangans.id;
          public          asoko2    false    230            �            1259    16551    pemohons    TABLE     :  CREATE TABLE public.pemohons (
    id integer NOT NULL,
    nama character varying(255),
    tempat_lahir character varying(255),
    tanggal_lahir date,
    jenis_kelamin character varying(255),
    kewarganegaraan character varying(255),
    nik character varying(255),
    agama character varying(255),
    pekerjaan character varying(255),
    telpon character varying(255),
    alamat character varying(255),
    kk character varying(255),
    created_at timestamp with time zone,
    updated_at timestamp with time zone,
    status integer,
    user_id integer
);
    DROP TABLE public.pemohons;
       public         heap    asoko2    false            �            1259    16556    pemohons_id_seq    SEQUENCE     �   CREATE SEQUENCE public.pemohons_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.pemohons_id_seq;
       public          asoko2    false    218            u           0    0    pemohons_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.pemohons_id_seq OWNED BY public.pemohons.id;
          public          asoko2    false    219            �            1259    16557    skcks    TABLE     �   CREATE TABLE public.skcks (
    id integer NOT NULL,
    pemohon_nik character varying(255),
    keperluan character varying(255),
    created_at timestamp with time zone,
    updated_at timestamp with time zone,
    status integer DEFAULT 0
);
    DROP TABLE public.skcks;
       public         heap    asoko2    false            �            1259    16562    skcks_id_seq    SEQUENCE     �   CREATE SEQUENCE public.skcks_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.skcks_id_seq;
       public          asoko2    false    220            v           0    0    skcks_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.skcks_id_seq OWNED BY public.skcks.id;
          public          asoko2    false    221            �            1259    16563    sktms    TABLE     �   CREATE TABLE public.sktms (
    id integer NOT NULL,
    pemohon_nik character varying(255),
    keperluan character varying(255),
    created_at timestamp with time zone,
    updated_at timestamp with time zone,
    status integer DEFAULT 0
);
    DROP TABLE public.sktms;
       public         heap    asoko2    false            �            1259    16568    sktms_id_seq    SEQUENCE     �   CREATE SEQUENCE public.sktms_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.sktms_id_seq;
       public          asoko2    false    222            w           0    0    sktms_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.sktms_id_seq OWNED BY public.sktms.id;
          public          asoko2    false    223            �            1259    16569    skus    TABLE     F  CREATE TABLE public.skus (
    id integer NOT NULL,
    pemohon_nik character varying(255),
    nama_usaha character varying(255),
    jenis_usaha character varying(255),
    alamat_usaha character varying(255),
    created_at timestamp with time zone,
    updated_at timestamp with time zone,
    status integer DEFAULT 0
);
    DROP TABLE public.skus;
       public         heap    asoko2    false            �            1259    16574    skus_id_seq    SEQUENCE     �   CREATE SEQUENCE public.skus_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 "   DROP SEQUENCE public.skus_id_seq;
       public          asoko2    false    224            x           0    0    skus_id_seq    SEQUENCE OWNED BY     ;   ALTER SEQUENCE public.skus_id_seq OWNED BY public.skus.id;
          public          asoko2    false    225            �            1259    16575    surat_keterangans    TABLE       CREATE TABLE public.surat_keterangans (
    id integer NOT NULL,
    pemohon_nik character varying(255),
    keterangan character varying(255),
    created_at timestamp with time zone,
    updated_at timestamp with time zone,
    status integer DEFAULT 0
);
 %   DROP TABLE public.surat_keterangans;
       public         heap    asoko2    false            �            1259    16578    surat_keterangans_id_seq    SEQUENCE     �   CREATE SEQUENCE public.surat_keterangans_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.surat_keterangans_id_seq;
       public          asoko2    false    226            y           0    0    surat_keterangans_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.surat_keterangans_id_seq OWNED BY public.surat_keterangans.id;
          public          asoko2    false    227            �            1259    16579    users    TABLE     �  CREATE TABLE public.users (
    id integer NOT NULL,
    username character varying(255) NOT NULL,
    password character varying(180) NOT NULL,
    keterangan character varying(255),
    level text,
    remember_me_token character varying(255),
    created_at timestamp with time zone NOT NULL,
    updated_at timestamp with time zone NOT NULL,
    nama character varying(255),
    CONSTRAINT users_level_check CHECK ((level = ANY (ARRAY['1'::text, '2'::text, '3'::text, '4'::text])))
);
    DROP TABLE public.users;
       public         heap    asoko2    false            �            1259    16585    users_id_seq    SEQUENCE     �   CREATE SEQUENCE public.users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.users_id_seq;
       public          asoko2    false    228            z           0    0    users_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;
          public          asoko2    false    229            �           2604    16586    adonis_schema id    DEFAULT     t   ALTER TABLE ONLY public.adonis_schema ALTER COLUMN id SET DEFAULT nextval('public.adonis_schema_id_seq'::regclass);
 ?   ALTER TABLE public.adonis_schema ALTER COLUMN id DROP DEFAULT;
       public          asoko2    false    210    209            �           2604    16587    api_tokens id    DEFAULT     n   ALTER TABLE ONLY public.api_tokens ALTER COLUMN id SET DEFAULT nextval('public.api_tokens_id_seq'::regclass);
 <   ALTER TABLE public.api_tokens ALTER COLUMN id DROP DEFAULT;
       public          asoko2    false    213    212            �           2604    16588    domisilis id    DEFAULT     l   ALTER TABLE ONLY public.domisilis ALTER COLUMN id SET DEFAULT nextval('public.domisilis_id_seq'::regclass);
 ;   ALTER TABLE public.domisilis ALTER COLUMN id DROP DEFAULT;
       public          asoko2    false    215    214            �           2604    16589    kehilangan_kks id    DEFAULT     v   ALTER TABLE ONLY public.kehilangan_kks ALTER COLUMN id SET DEFAULT nextval('public.kehilangan_kks_id_seq'::regclass);
 @   ALTER TABLE public.kehilangan_kks ALTER COLUMN id DROP DEFAULT;
       public          asoko2    false    217    216            �           2604    16833    keterangans id    DEFAULT     p   ALTER TABLE ONLY public.keterangans ALTER COLUMN id SET DEFAULT nextval('public.keterangans_id_seq'::regclass);
 =   ALTER TABLE public.keterangans ALTER COLUMN id DROP DEFAULT;
       public          asoko2    false    231    230    231            �           2604    16590    pemohons id    DEFAULT     j   ALTER TABLE ONLY public.pemohons ALTER COLUMN id SET DEFAULT nextval('public.pemohons_id_seq'::regclass);
 :   ALTER TABLE public.pemohons ALTER COLUMN id DROP DEFAULT;
       public          asoko2    false    219    218            �           2604    16591    skcks id    DEFAULT     d   ALTER TABLE ONLY public.skcks ALTER COLUMN id SET DEFAULT nextval('public.skcks_id_seq'::regclass);
 7   ALTER TABLE public.skcks ALTER COLUMN id DROP DEFAULT;
       public          asoko2    false    221    220            �           2604    16592    sktms id    DEFAULT     d   ALTER TABLE ONLY public.sktms ALTER COLUMN id SET DEFAULT nextval('public.sktms_id_seq'::regclass);
 7   ALTER TABLE public.sktms ALTER COLUMN id DROP DEFAULT;
       public          asoko2    false    223    222            �           2604    16593    skus id    DEFAULT     b   ALTER TABLE ONLY public.skus ALTER COLUMN id SET DEFAULT nextval('public.skus_id_seq'::regclass);
 6   ALTER TABLE public.skus ALTER COLUMN id DROP DEFAULT;
       public          asoko2    false    225    224            �           2604    16594    surat_keterangans id    DEFAULT     |   ALTER TABLE ONLY public.surat_keterangans ALTER COLUMN id SET DEFAULT nextval('public.surat_keterangans_id_seq'::regclass);
 C   ALTER TABLE public.surat_keterangans ALTER COLUMN id DROP DEFAULT;
       public          asoko2    false    227    226            �           2604    16595    users id    DEFAULT     d   ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);
 7   ALTER TABLE public.users ALTER COLUMN id DROP DEFAULT;
       public          asoko2    false    229    228            S          0    16525    adonis_schema 
   TABLE DATA           H   COPY public.adonis_schema (id, name, batch, migration_time) FROM stdin;
    public          asoko2    false    209   �m       U          0    16530    adonis_schema_versions 
   TABLE DATA           9   COPY public.adonis_schema_versions (version) FROM stdin;
    public          asoko2    false    211   o       V          0    16533 
   api_tokens 
   TABLE DATA           \   COPY public.api_tokens (id, user_id, name, type, token, expires_at, created_at) FROM stdin;
    public          asoko2    false    212   :o       X          0    16539 	   domisilis 
   TABLE DATA           _   COPY public.domisilis (id, pemohon_nik, keperluan, created_at, updated_at, status) FROM stdin;
    public          asoko2    false    214   <�       Z          0    16545    kehilangan_kks 
   TABLE DATA           j   COPY public.kehilangan_kks (id, pemohon_nik, keterangan, ktp, created_at, updated_at, status) FROM stdin;
    public          asoko2    false    216   ͛       i          0    16830    keterangans 
   TABLE DATA           v   COPY public.keterangans (id, jenis_permohonan, keterangan, permohonan_id, created_at, updated_at, status) FROM stdin;
    public          asoko2    false    231   ��       \          0    16551    pemohons 
   TABLE DATA           �   COPY public.pemohons (id, nama, tempat_lahir, tanggal_lahir, jenis_kelamin, kewarganegaraan, nik, agama, pekerjaan, telpon, alamat, kk, created_at, updated_at, status, user_id) FROM stdin;
    public          asoko2    false    218   ӟ       ^          0    16557    skcks 
   TABLE DATA           [   COPY public.skcks (id, pemohon_nik, keperluan, created_at, updated_at, status) FROM stdin;
    public          asoko2    false    220   )�       `          0    16563    sktms 
   TABLE DATA           [   COPY public.sktms (id, pemohon_nik, keperluan, created_at, updated_at, status) FROM stdin;
    public          asoko2    false    222   ��       b          0    16569    skus 
   TABLE DATA           v   COPY public.skus (id, pemohon_nik, nama_usaha, jenis_usaha, alamat_usaha, created_at, updated_at, status) FROM stdin;
    public          asoko2    false    224   ƣ       d          0    16575    surat_keterangans 
   TABLE DATA           h   COPY public.surat_keterangans (id, pemohon_nik, keterangan, created_at, updated_at, status) FROM stdin;
    public          asoko2    false    226   Z�       f          0    16579    users 
   TABLE DATA           {   COPY public.users (id, username, password, keterangan, level, remember_me_token, created_at, updated_at, nama) FROM stdin;
    public          asoko2    false    228   ��       {           0    0    adonis_schema_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.adonis_schema_id_seq', 16, true);
          public          asoko2    false    210            |           0    0    api_tokens_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.api_tokens_id_seq', 452, true);
          public          asoko2    false    213            }           0    0    domisilis_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.domisilis_id_seq', 5, true);
          public          asoko2    false    215            ~           0    0    kehilangan_kks_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.kehilangan_kks_id_seq', 5, true);
          public          asoko2    false    217                       0    0    keterangans_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.keterangans_id_seq', 46, true);
          public          asoko2    false    230            �           0    0    pemohons_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.pemohons_id_seq', 51, true);
          public          asoko2    false    219            �           0    0    skcks_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.skcks_id_seq', 17, true);
          public          asoko2    false    221            �           0    0    sktms_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.sktms_id_seq', 20, true);
          public          asoko2    false    223            �           0    0    skus_id_seq    SEQUENCE SET     9   SELECT pg_catalog.setval('public.skus_id_seq', 3, true);
          public          asoko2    false    225            �           0    0    surat_keterangans_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.surat_keterangans_id_seq', 4, true);
          public          asoko2    false    227            �           0    0    users_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.users_id_seq', 17, true);
          public          asoko2    false    229            �           2606    16597     adonis_schema adonis_schema_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.adonis_schema
    ADD CONSTRAINT adonis_schema_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.adonis_schema DROP CONSTRAINT adonis_schema_pkey;
       public            asoko2    false    209            �           2606    16599    api_tokens api_tokens_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.api_tokens
    ADD CONSTRAINT api_tokens_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.api_tokens DROP CONSTRAINT api_tokens_pkey;
       public            asoko2    false    212            �           2606    16601 "   api_tokens api_tokens_token_unique 
   CONSTRAINT     ^   ALTER TABLE ONLY public.api_tokens
    ADD CONSTRAINT api_tokens_token_unique UNIQUE (token);
 L   ALTER TABLE ONLY public.api_tokens DROP CONSTRAINT api_tokens_token_unique;
       public            asoko2    false    212            �           2606    16603    domisilis domisilis_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.domisilis
    ADD CONSTRAINT domisilis_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.domisilis DROP CONSTRAINT domisilis_pkey;
       public            asoko2    false    214            �           2606    16605 "   kehilangan_kks kehilangan_kks_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.kehilangan_kks
    ADD CONSTRAINT kehilangan_kks_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.kehilangan_kks DROP CONSTRAINT kehilangan_kks_pkey;
       public            asoko2    false    216            �           2606    16837    keterangans keterangans_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.keterangans
    ADD CONSTRAINT keterangans_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.keterangans DROP CONSTRAINT keterangans_pkey;
       public            asoko2    false    231            �           2606    16700    pemohons pemohons_nik 
   CONSTRAINT     O   ALTER TABLE ONLY public.pemohons
    ADD CONSTRAINT pemohons_nik UNIQUE (nik);
 ?   ALTER TABLE ONLY public.pemohons DROP CONSTRAINT pemohons_nik;
       public            asoko2    false    218            �           2606    16607    pemohons pemohons_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.pemohons
    ADD CONSTRAINT pemohons_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.pemohons DROP CONSTRAINT pemohons_pkey;
       public            asoko2    false    218            �           2606    16609    skcks skcks_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.skcks
    ADD CONSTRAINT skcks_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.skcks DROP CONSTRAINT skcks_pkey;
       public            asoko2    false    220            �           2606    16611    sktms sktms_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.sktms
    ADD CONSTRAINT sktms_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.sktms DROP CONSTRAINT sktms_pkey;
       public            asoko2    false    222            �           2606    16613    skus skus_pkey 
   CONSTRAINT     L   ALTER TABLE ONLY public.skus
    ADD CONSTRAINT skus_pkey PRIMARY KEY (id);
 8   ALTER TABLE ONLY public.skus DROP CONSTRAINT skus_pkey;
       public            asoko2    false    224            �           2606    16617 (   surat_keterangans surat_keterangans_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.surat_keterangans
    ADD CONSTRAINT surat_keterangans_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.surat_keterangans DROP CONSTRAINT surat_keterangans_pkey;
       public            asoko2    false    226            �           2606    16619    users users_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.users DROP CONSTRAINT users_pkey;
       public            asoko2    false    228            �           2606    16620 %   api_tokens api_tokens_user_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.api_tokens
    ADD CONSTRAINT api_tokens_user_id_foreign FOREIGN KEY (user_id) REFERENCES public.users(id) ON DELETE CASCADE;
 O   ALTER TABLE ONLY public.api_tokens DROP CONSTRAINT api_tokens_user_id_foreign;
       public          asoko2    false    3261    212    228            �           2606    16739    domisilis domisilis_fk    FK CONSTRAINT     }   ALTER TABLE ONLY public.domisilis
    ADD CONSTRAINT domisilis_fk FOREIGN KEY (pemohon_nik) REFERENCES public.pemohons(nik);
 @   ALTER TABLE ONLY public.domisilis DROP CONSTRAINT domisilis_fk;
       public          asoko2    false    218    3249    214            �           2606    16774     kehilangan_kks kehilangan_kks_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.kehilangan_kks
    ADD CONSTRAINT kehilangan_kks_fk FOREIGN KEY (pemohon_nik) REFERENCES public.pemohons(nik);
 J   ALTER TABLE ONLY public.kehilangan_kks DROP CONSTRAINT kehilangan_kks_fk;
       public          asoko2    false    3249    216    218            �           2606    17021    pemohons pemohons_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.pemohons
    ADD CONSTRAINT pemohons_fk FOREIGN KEY (user_id) REFERENCES public.users(id) ON DELETE CASCADE;
 >   ALTER TABLE ONLY public.pemohons DROP CONSTRAINT pemohons_fk;
       public          asoko2    false    218    228    3261            �           2606    16727    skcks skcks_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.skcks
    ADD CONSTRAINT skcks_fk FOREIGN KEY (pemohon_nik) REFERENCES public.pemohons(nik) ON UPDATE CASCADE ON DELETE CASCADE;
 8   ALTER TABLE ONLY public.skcks DROP CONSTRAINT skcks_fk;
       public          asoko2    false    3249    218    220            �           2606    16711    sktms sktms_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.sktms
    ADD CONSTRAINT sktms_fk FOREIGN KEY (pemohon_nik) REFERENCES public.pemohons(nik) ON UPDATE CASCADE ON DELETE CASCADE;
 8   ALTER TABLE ONLY public.sktms DROP CONSTRAINT sktms_fk;
       public          asoko2    false    3249    218    222            �           2606    16750    skus skus_fk    FK CONSTRAINT     s   ALTER TABLE ONLY public.skus
    ADD CONSTRAINT skus_fk FOREIGN KEY (pemohon_nik) REFERENCES public.pemohons(nik);
 6   ALTER TABLE ONLY public.skus DROP CONSTRAINT skus_fk;
       public          asoko2    false    224    218    3249            �           2606    16763 &   surat_keterangans surat_keterangans_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.surat_keterangans
    ADD CONSTRAINT surat_keterangans_fk FOREIGN KEY (pemohon_nik) REFERENCES public.pemohons(nik);
 P   ALTER TABLE ONLY public.surat_keterangans DROP CONSTRAINT surat_keterangans_fk;
       public          asoko2    false    3249    226    218            S   {  x����N�0���)�Gb'� E*��Z����6�!R�\E�W�N���n�^����nv��U0&5S��~�������@� > ��|5@(<B\��! )�i�7U��t�xYr�\:� D��'(,C�"��UI��N%?��w�a���� i	�˚�hy:�~��?tۏ�zD����EUU)��9|/���$�Nd���&�8��0��ġn���g!Zb�H�K�Ո;V.�?Jc��C�wc��y�
���s�?ӥ�pGq��Q��`}��ܖ��U�^}̇��4���eJ�)�Q��`�D��;J[NmH�F97�>��6e�B>���%�Ed����= z�Z��z;��Ҭ��oZ�I�      U      x�3����� a �      V      x�}���$I����OQwb�/y���b+@ ������g�tD��[-�������������������������c��������_��j��?�9Ltƍݽ)��l�ȩ���_u�5[Yc��V��E7F���Z���o���ݿ��/.�e�o_G�J�����S<w��aҶ}��S7=������U�(!��g�ƕdڰ��\kv������������+��x:�-E߬�uec�v��\�y�:G͉/�i씼c��-Z��1W2����cx��.����0ʪ+�\�4ٯ0l-c6L[v۫k�H%��J�5��k�c�����ۛ�6�\(���+�h�͍��\�m���̎ƻl&���K���ɯkլi{��c�����J���|��V��+E�����so�Ź^�\��Y6�R*��vع�Umy7^���M�6�+Oe����)���fMk�Z�tݥ`��Z�s�n��3ǲl]�xp��=+����z9,<̽].e����1v�e���}�Y9�e|\��[������1~�:��o_�ݶ����ť��!��t�����Y���J;���+ek���r�V����`~��>\Ƌ9�u��V���8�hC�c3V�ə�}��$��.���]�s��/��o�^�޶���#��j�ò*�l��u��n���5�'����v�R�n�`D (�[�*����NO���w����3]�7�;3|��˻�ϵM�b��| ���8�����Lдa��H�ݬ-�2s��F}o��s*�� K{��y���s��~��
��r�*qF@ŷ�Mku�	�fZ=�1~��"���)dWs�#�;�ۑ'�zM���SV�I�z�R7�S
ka"a��������)��`Th߳3ހL_���&�b�����m�V� &�z�����<�����je��%�5�p|�`�QA�o���b1��|4>��G�f���吽�p�����aBv�8���
����}~��	��!ϱYsC52�⪮�ZS�|��4�}(�q ٶ��#���	�L�;��N"h��l�Jؑ*6��K(�� ���Gꫲ�.|�]~���/���ok(ޕҦ�M"Y�ι�k;P&C�vI&��4� #�t�(_�C$ssy=\�{n8y����JGGMp5;��X��皎�k����y�>z���"��S��� Α�R�3�ݳ�M������Nm�jp��mgưƱw$D��V�³�'�9k���-�~CZ��ƾ�e��6;I~{��Bf溿w���=+?\1qW2��K{�[�Q��rR~����_6��;k��I�	�2�]��Cd^}�'|����0�]c��ypf�#0V�]��׍	�ϲ�L#�sG�N��{sO���	5�^c��@I�&ʯq5x��6��B$w7�s!�9@�6��W��MƳ�X|Ͽ��a>��O4�
e�8|����#�\�4U���{��>滿�8�^�w6��W�9̋�u�$��c2�<�N�(H7y�u>��yv���'��O�t�������8<'�Dgp��Qm(�bBNs$H�d��j�}�$6�f�� ���`.*��e�� �k��
E��=Z�K��I´������ET�ԇ�sV΅r�?�_ u-�u{��h�N�Y)PvR� �1= ��yrlt�7�T��'��h�3����?��m����g��Z��'6���2*y9�P�+���Ͳ�3@���0����R[)|q9~ʸۺ�e0�RJ��5�9��o�'BSa�ʘ��	�@�HG0.�[�j=���磊_���s��� Sd(���k���e�!�{�?HFl�9K^w.r��������[\�@۬f�HW�`ԚKD0�Q�0t�F�i��>��(���r�J����=���g����'��,
�cnL!#����~I���
�n��/>��j�Uj0��=�T/��­����m�����A9h+R����h9��:��R�m���?C��h���jF�5�5T�$R��$wtd'�d�h$�?���q�(��������,����?mݤ���7r�	q���n�<Ch���ߎ��	��:ў̥[�=Q9Qc��%���+K�:f�����F��r\�Y���+��|,�c���O�����A�<��ջ�{�F�:Βwpp�h\Hd�%�,
e��4��6��n����;�h�V�r���ޞ��Ԇ2�%��zAJe(�5b��s�)�)��ɾ�K��t��ökE2<���jXzD:�t�,4�O����,��N�e̧u��W}6>����F,�+�J�.�o�m ��|1�{���S��7��
��x��|�m�o*E�߳�iq��5�%�TQϐ8��L'��vڜ��~5�]ֳ������=�ۨ�~���P�C'�y,�+T���F6��J�A�����*Z����/�֨B�xs�d=tW��A�+�|�n��C�� ��u+]�v��$�$��l_���>o�q���	xjB��La7� rt��Ea�A��aZ3���R�#�㾭]5���~w�)��K3�84z�i��X�M�$���X.��vH�&7���n��ѿ #�u��O6޴@�܁}w���r�8���y��
z��#��;��o�ϗg�`�B��v�=.�	�j�4��C��8>I���4Y�����X��ݺʫ���;��A�b&"��n�"*ȍ8U����[h-b��fy�7��ޭ��1�Jyv��6+�L���{W���^�dPwCd��o4mB:�IX:�m��n=��Pg��;�M�>u�`�v��Jg�D�q�*��*WG;D<y�|��P�!;��������6�v�;$�p-� �!��5a�|L跨MY+���{�
���N:%X���tq�v��JN�����ڂk�" .�v���n���!v����y��
�$:F���6ُ1��9]�@.7�P��l�I7is�/��u�Y�����>�Ң��*>8,$��j1�as�`_su���K@3l��̬��o��Vk:U�Ho8�Mpj_c� ^�s�|�*�~v'������}#��?�lz�4T�s���
�"���mv�&��#�B.ֵ'�>o�A�h��:�R}���b\w��|�:�}���Ň˸x�k+�5��	��R�T�>��㴠[oչ?ƃ#�=�OY�Ь��ȵ��iw,-���6j+���c�#_�w
��1ɽ�L���=�o㧊,\�h�H�����zl��q��f=,3�&��wĥ>��V\ވ��ո��p_�ឧ3o���To��۰py\F�v0?#ِ^\JL�6J4��8�)�W�.��8���0UK��V�<0F2�$R0}���E1g�)�q��Sn���;��/}\:dK!�L�&��~fhd�O�!h��s��F5�t� Cb��^断.�
�&��*i��m����]z@��`LD-ڵ�Ȭ�=�Рg�3��㖤����J����iE�+k�L5+	�s��ĀPC�7\��,��ʃ��C���v�/��m�px�t����Vl�6��ٌ������j�j*[�\���v|�Fwm�?�~8��\#����C$����5�B���|b�m?�'t�1~�ȏ�|��8Vi�\�A!場=R�C9���v[Ø�<˖�t���=��O 7���}Z:	��T�6��κ��ƕ����@�q�ˁ�a���j���(V�N G�&~�KFA���ܵ�dU��{���f���&��4ɼ7�<��Q�-���+'q��R��K��B�&�e#�Rt��h�ex<In�ڜȘ��c����S��"l ��eM��m]��Y�8��8�`����T�:�[�&|7`����©*$�Xd�I���ǁX"�l-|W@�r�O.���GYo��
nx=v�8֌��L�f��+���i���k��g�VY2J��G�w��'�<g~B��K�䔕u���fq�EЦ�0����?�*๖�V��������F�|B8&�B�APA���~@��������sd�V�    ��jtid��������2T��3��(4��J�T;���f��D���m�:]�|7��g�'�k�Q�i l�ox��&�|�t�;U�Qn�<ur񨍟�;�x�	�p!��h)��*�+Y��jI��[)���Qt��9���x2��8�	�P�d+d�� {E�C��(�qz4�Z�U�c�-gf�_��x�7m?6!97Ҝ�-�J����:m\b�C��kXr_�?����N��o����x��ʏ]C*�U�Ŀ
�p�25�@:W�7�^ �f�$
̺�i'���?/wJ=vc�cQ���b��(�E�hH7�r�<�8;S�ժj�����ޞ`2�f8v��tuj���Zj����W۝�u�z�J��۷H*
�)��V�^�I,Ǯ!����X�����n����Xı�\X��˅��0s����d<�����j��]6�:G��1�`) i]=8����[����2�i�~rD�����]?��$e�u�E�'.�V����\}����Ji�>�~�XX��U�n2�l���BAW-(�!a��B�O�;������qǞ!�ۅ�w*���UEt[]j笺k���9�e�MDT�F*�d;�bN��b�6�`�E�`#Oƺ�	 @K��j��9��L9�询��M2�Ɵ>
wl���2�G�zK|U�MPP@Me7���8$��j�<2cO?$��*�>�c�P�!T_�^�D�A��`���*���	��ݔz� ����'�)$�g�'|#�-�,4�� )�V�@�I��\��^&��&�M�#�X��*/��'|#�VK�!��;D��D2yE�$u���M�F4�\b���H+0���MC�'�UY4���R�P�R S-�U �8�Y|��f����������4�%̸�,����2����Au����h&j%Ƃ��!�ʫ>�ZO g}�@��	hQ�+�\d Y��T�V�yI�^��������S�'��#%SH~�Py�W����<#���Kv�S��8�;d��&�v���?�y���75n�ժ�%�y�������r-��툹`,������8���7u�'���#PDHX�ԆL6m=�?� ��]�q�A=[,��ֶ�W����+����	�6�df�G��یa�Q��nw5�l��Ǿwn$S�g�����[�ys8��I�*�xk{�F!��szG�
$��A�L�^���a����Λ�%��o.8����⍃�ɾ������Qru�����j�G��y���m��9�E
F�G�B�|�γ�I`_��K�+U}�p��R&�d�.�ys�7�a�G*Ȁs�UU��.�	���B�C"A�邾��a�ws��Ls�%"YFV��6s���R� e��ʭ�dX|���/���n^��vݾ�I���,��w!����p
wa���\��}]F2%����E6 �H���.��d܅g�Ǯo��U�>��p8�qCLꖼ�jI}��A��i/���p��ݾ�}���o��^��B�ż�.���1�5��`��i�����FtB:�����P�9\��$M�V�J0]��=y�1��S��JJ|V�r;;��x�9�Ə��6t�bQ�gA����(3��IΓ��%���	���^}Ώ��x��X�����h!EK��f���Ϋ /W�e8R�a��*�gjp�_���OOZ��ʧ��G�DdI���d0��S&���>�W> 6�d �|��ݶ#�v�·2C TQ嵄���"�
+]��{#:=e�}�`L�C2����wd����u�}�?��Ù4	d�H�t�P4]�w�ǚ�8��T� �����d��PT���?�[��&?�t��:�H�-u���v�4j�I|��� XUj>mG���*�Y�	ߤN�+�ɾ�6pi�-=�C�8[6h�
����l��o2��4��s�@[V��-��"D6aB {����ix}�̑$`z��,�I�)�1_��7�S����R#��@!�>~G|g��i�+e ��R�8�%�XsM���������Y�y�ŭ�</�W�%�Y�.�
����i�n���^;mn9$;����6�n��/ͅ�C�@w����8r�e\��V�ef�&C���*�۝
�%��gN���9ʅc�Af%��	��]j��!���4�ײq��-tQIw�_1~��>�
9;R��9wG4��4�Ŧ�f8Z_��u�tJ|���1�3} A����N��R8��l˚Q������%�������Y�vҟ���4�ۙ�k28ޅ�p�c�WZ���&UE5M$c�G5����:�ԏV�
�t��\��\��-���L��uUy�Ѐ�x�Wʅ�Af�1H*]��~%�^�H�W���'�+�F�v>�f���[)p��;���U��٧6	��M�������x�l���pU�$�0f���h��_>PKI!8�,5���eA>��4��VRF-��O�=�N�T�gVߡ])j�p�R�X�W�AL�Iq�����@�}��"1V�ŗ'��Nllc.�	��vˇZ��}��ҫ�U�YvB�A�* 6�]�f�4nT ��j���^�+^cT�i�ipw�k)]���J�C��=ej�v򟴻�R!�1���ܨy{B�Q��q�7DU���!g'�^�u 8r�&�W��U��_����W���=!��B
v��h7�rB��ǓJ4��򽺩� �c��C��/���p��p�=N&�	=_r��6)uw�.���;ɫ�ۖfO*�e��j� $>��o�OS��G
7��j0�
�R)��QB����!g�3�V�'��Qu<�/�Z2�2��Yە���,���R�yd���
Г�Q�ut�rME��z��]o���+��'����Ą��`t��R�ϥy�36 i��t��5Zw��w���Ⱥ5�=!�a�ݯ���z�8&�V]z����#�G̑�!�b7pǸU�S�����D{B�14��J�������v����#��&W��e��z� ��k~p8����N�&9�&dԞ1	^��|�:��uA����*�+-���x�� o��yl�9��za`��P^I������\c�j"{��p�_�h�9򗢯���y�`��'�M�j�sp�JA��o͕�Fy�tpD ��
�pF��o�Ƿqw���;ޢΠV�!�Bu��99�gMh
Ż�e����D"[9
�aܫ�ٖWy���p��0�c9�{u[�8�Тvyq
d>�I��|okt��H����Ϛ�HOVsGW���s,c�.V�Y�\V�BI�+,;(4t��6s���ti�����q��_OY�E*�=�5��50k&<�:q��@����-�Ε��FH�E2~�x!��*�</^��q��f@���H�9���u�W�f��R�^�����/�^�/�50e��sc�;\1��Y?���1���[�4�V1$�Xp��M��{�93��1��)��&�"��ZT^Y{ J�g��Ah��
  �L�Ħ�H�$����k�o��o�^O���Tgw�jQpkE�F$a턟-;�A K�D@Omm�Q�$_��]��*�}pȯd4�(�g[&������Jm���.�B�KӾ��45�)՗�ے��k��\M��
�-�Tc�q��F+���"���Ւ�N��kb���Ÿ��^�w�crX���Kw�t�詎���'���U5���v�#�����G��w����#��G1:���S��CH����B��|@N�i|�,5^������mﺄ?�\vQM��<�N��I����0��9cnҡw�� s�&V?8���x�[�!��*b|����q@�x�˓K5�.a�u�c���Ӽ�)89ɷg��~5�1�3?��kA����idxmK�X�-C@�W��S/��=*w��?4r�����X���kN�}��ʟX�#�Z�N����A)��YH\/�#$ V_�=\�@	o�'�5�@@"u���-�D+^Si`h��w}��s3W����PZߌ[=�u��ŵ0`�	%��L�@��͞��8�Yt�Z5��2:�n �  �k�����x,�Rw���/p�Krm��ݤѫ�m��]W��zUK-qmd"�]#���/ƽ&H��б
7�!���T���O�ۙ~�Q��~J����B���
DN�_�m{���c��_��9�5��aT��|ݔ�遉��j�S����u|�v���_>�\�X��#z����Dh�륾Q���N�Oi��GrLڤ٬�{U侬\�3���?V�p������7�2ao�/@��}��%��Da�;"T�<��J��_V�q��>�~�Vzfa&88dAb2MHET��y��F���)��	w�������>��X���nE�r����s.��p+!��=�1W��LBsI��Ӿ����5
�\r�ct�zO�x�/��Ԕ�zѣAQ,W�+������	����{� ��̱
7�e�<�ٛZj�T���# 5���U��$# $�_���]m��*��54��%\��*;��G��/�;!b5r2U��&�+����^ȭ���H�r�A��I!��A�
y��w��J�5�B��VS�
�L���}� �FB��[��#���%���z����5
����X��
K%Г�J�Q�c�x%LlS�C�z����.[d4HQ�#tuy�7��X�Q%�P9��	(m��t
���h�����k��95=e�xS��~ �(�TnR��Cm��p��ȵ��AX��*���e\]*��J<�W-�,M܃e#@fX-��h�.ۺ:<]^ oc�Y��-l�->nq/�>����s�i�'ȘEτ�XQ�9��́<3	?�OC��>�[��R��U�E����3ϳÝ�ڀ�����R��L�%���Dq�s�E;=N���!Y�a{�+y�y��x�j�-�E������"L?�P�v�/��1$g�#��� ��{�I�>m*�3�	/[u�d�KD��_��W�6��YT�!��Z�%ϣ�;&$�����s~�e<�yQmk���֌��z�^CI�����8\X*�3��/G��P<���;bB
���ŬV4��W�
�zY��w�0�5[�R�ħ�p������<����)�٤6�"����P�(s�
���e:�����$�BI��?��z]D�jOV;_���"R�^��C��=�Z�&
X1R��.Ɩ�^8��,L�k�GVS�i6њ����	Ћ��v'r�d�;9�s���Y5��YЧ�i-���:�GV�#�r�d�q���KPۙs�K3�3�{!f$TT=2Ԏ��`������n5�O�p�A����{#�7� ��y9������� �kLIϽ��fq��H�_�'�ss�����K�e=�k:�LE4�6�#Ba2��v�� ��8�^p�O�_>�*u>_�j�z��eW���b�	���	ѓ���U��Ry6�2;�Z�é x�]��}���[%ε�B���g&W�:_�����^����>h��q�>�����^���f~,9���nS�^��Z���O�*����Z�7��Uo�(�ɀ��/an�w�;���5y�D���������m.#Y�q�:[�|!� �d������z���Z:��*v���]ťAJ����Yo��qvM��}=}��8��kh�>�ӎV�t~���;�A%��<4BC��[���C�����j=����{��x��6��~���n=,��*���PI���͉�籫���;�ڬ�AI�*!�� j����z�/��qU]���z��D�t�'��&� �Wԃ�1�F:�k�Pj�h���)�{|�)�����^��XM5�j%7!��$M�©'U}��_P��ďWH�U����4z�6� ,�a��g�xܘ�U�tO
����p���@�4�������U�Zo���4a��~����L��'��V��;FB:H1"i�2z�8h�}ŷ^��1ʩ�C������	�fL�̈v5X��NmZfk�'g>�B9_I���@���0����EN%!I��<�s|.��kߛ׋�M���\)�5Zݞ�Ւ�d���'�)ݍ���hUF4��=Ϲ��Մ��n5{�ݰ?գQc!�Ͳ��/a64<��§��V���/�Õ��p��C���V�9\´==�H��b���w�����Nͷ����UXy�^��	 {{�?>�t��`O`רzV�<��`�z�Q�L�@A��z=�W;�����"Ѥ��;���Ŭ1|V�� ����u�ąM͙MO��V�c�7Ul��=r�z_��jQ��Y��Ŭ��:X��$�ۿ��*�v�ʚ:j(V�r��̹����h�}�zć�W�γ��Y�6�'~�����oR���V�!9u�N�����鐭΢6P5.��m=V����pˉ	L�dݭz]m9�;���
�(��%���#�2���ڣ�&��g|B8�NH��Id�n����|o��z�E�M2�)=\I�������+qz��jA�g�Q��GXc��׎��V{sF����u�"zY�*��L����O�.���xS���a÷u�� i4&�՛qM�JNu�I/!u�^TB?�O�^-����o<B���t�#A(Xn�GB��[C�Yyz���*b�����.%���4�S��jr��!��#*�3������7��(QU���^�w\ ;$���MR�̄�Z��Q_�y�5�Svכ򫬬J[*b�#D4�Jx՚膦T�Q7��� ��PN_���+�/��p|�7v�����5S�����	��Pf��Ni�MШ9l����}Tֳ.rx��#�0��o��bu� ��7a f`�/�b�h�͞z@�-L�!kV�u���g��i��3�U��FuNS[@A�!����~Kǿ5=Z����~���t�8�r�S��u��B�!v�a�I�����ˎ�����?��Z7��s�9Hn�b��M��+sDoS)��p���W=ǀݦ?�� o�al��%B���Ÿ����hp8V�&���M�Q��r�Hʅ���E۩��&�jG�k%�����͢�K4����5߿�����?�      X   �   x�e��
�0��s�{���I6i�,^L��|�zP�x���'�ȩfNή6��A*Ii��js<q�@\r���&�N�g���{�O�h�i�f��jv�C��J����b�2�����9x�wN`,      Z   �   x�e��
�0���)n��4mFׂ��ˉ�-���퍢�8w?��QY"m�A�:D�b�Õ�Ʊ�SH��i]8��q.���e�.�+���q/��h��A��G�j4tD��S��V�uO$��T�� j���9�G8��4��</�a	3o��)DN��}��~���i�n�m�O��򨤔w�PKg      i   .  x��X�v�0]�Wh߆�' �ݺ�EwM��m���89����<D������_��Ό$F����S�����J���	�H��e��O@��1֐
�?�!ivx��J�⯇�6[|�	rc�z����n�&4LT�Hh���s�#����<#�c�эi�D�D�Y�42: ��.F~#��_��xr�%SA�)�B2q"����5�_çz>��օ���`�XΦ&X�l�B�M��X�
��C����ّUvԘ���=>�����̒�P���yz4v�(���Y�&�R���}�n�ݵs���F�vP�>qV��k�� �fR��'(�E|Y�5D���q*,��e�t��g�0�V���i���DjT�,-��i�3����r����,��\��3��/��p6+�$W�j�3���g�Y��11�3��3���.����k�=X|d��r�s�=�=؃�-���I/,t"T C6o�G�黼w�'󉟤�H��#)����E�(ųɁ�9����߃�� 1�¶��pMF><u���Jw�ʦ�Hj��~���x�����&W�C���^J���B;���<ig�����_ѽ�O��_��M�p9=G����&<AH(/���3�p�%yrw%O��
�M�m��X���� ��6�W+r/�x�/,��9jQ_^l;C���=X��F���*ro���sn8�N�m�))���B�Km8��\��C5���o5�?6���غɇ�w�u�#�����L]����47�)rp,$&T\9V���m���/Wm�      \   F  x���K��0F���Ⱦ��}��]gSQU�#�f6��(S#�Q�~h����D2Y��9v�+��t���ܬ���e���7ۍ���B�[�k1Z����|�h	"��[kQ�w�f�����@�1=#F�9�n�*P�=�H$�����\�EY��������{�<IC���;l#��u�m�v[F��~���Ö���a���������V��qc������8V���k
��e�p���;�۝=�x�α�h�?g�G焆�ۿ���]�it��Wj���T��ܞ(Mt�!�b	�,�u�T�8Og��(M��1�R	KW���h<�l��A3�X.a��M_����K�I�&F͜c���2v_� �����oV��\W�2�8�c��'mY��r�/Q�j�)b�c6���5��J�P�m��%�$j��sc��p����n��Ys̸`ܳ��5�	���Dmaђw*(u���I�D�����9K�!6!��P!��&�N�i�;`��w�n�m�h;[��7k�4�v� ��f��ٽ5�V���vQ=����fYV@Q�w=+���O�¾�s��`8n���Fk���o�      ^   �   x�eͱ
�0��9y���p�Inb⫸dH��)��~Q�3}p~I&()�+b� �Y�t��Ѧ�fr�R����R���GH�\�*���"+�C|��?���mu���g7�mjߛ␪����S�'ػ�֞ҧ)_      `   �   x����j�0��s���
I�l˯�W�%�d��1c�_m�&Y��>��3�����eD�a��e��N�g�Ϩg��JU��`O����j�" ��S <�O�����1�>F9�dU�aH�[��0�VӪ��y�u�FL5Z�
"iG���I:��%��@��!�_�i_3B�yS�^X+����]rZ�i����(�~�o.Qk���t��4�59]zi�.��MN[?-	�j�^�NZ��,7.o�0\ �pRu�o      b   �   x�U�A
�0D�?�Ⱦ�O�9B�7�&�.Z1R���A��x�I�� ɺL��e*�Ty��d���`ȗ9��e���H�}��wd�(}8(�ִ��}�m;���5�=c�xd�%ߟ.N(5swƘ��*^      d   �   x�e�A
�0D��)�/��'�_s�n�	Tۨ�"�ׯ�R��<( hȷBD^�~K}��4������Ĳ���$��\[/클W��!b��:�Ō��ͩ�R1�ds͏n^˲��p�����x|�K��XG���#���~��4�      f   "  x���˒�H��u��`g�dr3���"�(�A��⅛>�h�t4U�����d�7����7�=����=�� <^|��D�̏��ٌ��Y]I'��k�>4�ʜ��dK��h��AX����2���ؔ<�Vɷ���?(���!� �N�=�z�W�}��=	��X����O=��B{��#�!�o�A �PQ^�a�����4*$�\,DEL���>����B2�������{<�|Ѷ{Os?=��{�����b�-u_��C/0Dq�pJo9�5Wf���k�$��^O�0bO�]&�_bG�k�=='=�����b�6���_��C�6�AR�����������Q�j2fIإ�ž;��Z9Ä3M\w,�Fܱ)r��]�	eguU- �Fp��8��3-��Mz���h� GЀ����������(���&I��C�
�|���@�D��ƮS���0�r�&��/���wEt*V�g�iִ�8�^4��Ng��C7"C0�f�{��K1��^��v����2�c�he����5��E���q�/��Uɱj�G�5ot�f��r#����o3|?t,�0���ԒSג�rZ�s;N����)�.��1�+�3P͵ iu�D�t���F�u2P�XZ��d*�kQZ�39ߣy��y;���[r�B~-���/�oz'���[�
C<wG�N�2�c�݇E!-m^O�1�g�b� E.�bF>��� Y�]�)��d�N��<�ܑ;�5t}�-&]�
5>�IQ�L��uL�q��}�&ߡTgRʤ$�I3|B�E$(�`\>��� hљ�h{��~��n�1Y�1�M�K�K��	�iT���@���L�0����~���gt�z$I� }�J-:��Eg_mL�8J)�qR �&O�I�/W������z�xA7�իq(���>u�0��P�FfSn������B�z;��,`�ν��q��G��F�es[�Tz���?_��( b߃�p��E̝��1��Υ������	��$���)��P�ο�F��+-ޕ�
K}^�r!ஓ����Lgj�Rd�^W�*���,���Gë2�<�`��������R�1@��ߎ���/BR�QG��<O&;ΩW��g
5��]��_�{=��V 7(�l����Ŧt����1��H��(x�F�i��Is9�d�x6d��Ćx@��(�����PQR3��lJR��^DX���>������#�P�N-:�@k��W�t�[��@Z��͚\�|żto�4���R�#`�we�v�^{3 �q�e�3{&$X<������$���|J-:��$0���h     