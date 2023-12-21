PGDMP      )    	            {            marketplace_tcc    16.1 (Debian 16.1-1.pgdg120+1)    16.0 �    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    24577    marketplace_tcc    DATABASE     z   CREATE DATABASE marketplace_tcc WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'en_US.utf8';
    DROP DATABASE marketplace_tcc;
                root    false            �            1259    25007 	   Computers    TABLE       CREATE TABLE public."Computers" (
    id integer NOT NULL,
    "Marca" text NOT NULL,
    "Fabricante" text NOT NULL,
    "Formato" text NOT NULL,
    "Marca_do_processador" text NOT NULL,
    "Tipo_de_processador" text NOT NULL,
    "Velocidade_do_processador" text NOT NULL,
    "Tipo_de_soquete_do_processador" text NOT NULL,
    "Numero_de_processadores" text NOT NULL,
    "Tamanho_da_memoria" text NOT NULL,
    "Tecnologia_da_memoria" text NOT NULL,
    "Tipo_de_Memoria" text NOT NULL,
    "Tamanho_do_HD" text NOT NULL,
    "Tecnologia_do_HD" text NOT NULL,
    "Interface_do_HD" text NOT NULL,
    "Marca_do_chipset_de_video" text NOT NULL,
    "Descricao_da_placa_de_video" text NOT NULL,
    "Tipo_de_conexao" text NOT NULL,
    "Tecnologia_de_conexao" text NOT NULL,
    "Plataforma_de_hardware" text NOT NULL,
    "Sistema_operacional" text NOT NULL,
    "Peso_do_produto" text NOT NULL,
    "Dimensoes_da_embalagem" text NOT NULL,
    "Codigo" text NOT NULL,
    "Quantidade_em_estoque" text NOT NULL,
    "Codigo_das_Imagens" text NOT NULL,
    "Dimensoes_do_pacote" text NOT NULL,
    "Descricao_final_sobre_o_produto" text NOT NULL,
    "User_Id" integer NOT NULL,
    "Fornecedor" text NOT NULL,
    "Valor_a_prazo" text NOT NULL,
    "Valor_a_vista" text NOT NULL
);
    DROP TABLE public."Computers";
       public         heap    root    false            �            1259    25006    Computers_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Computers_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public."Computers_id_seq";
       public          root    false    223            �           0    0    Computers_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public."Computers_id_seq" OWNED BY public."Computers".id;
          public          root    false    222            �            1259    34218 	   Employers    TABLE     �  CREATE TABLE public."Employers" (
    id integer NOT NULL,
    name text NOT NULL,
    last_name text NOT NULL,
    email text NOT NULL,
    "Employee_gender" text NOT NULL,
    password text NOT NULL,
    "numberJob" text NOT NULL,
    "position" text NOT NULL,
    employee_code text NOT NULL,
    address text NOT NULL,
    "RG" text NOT NULL,
    "CPF" text NOT NULL,
    phone text NOT NULL,
    employee_supervisor text NOT NULL,
    bank_account text NOT NULL,
    agency text NOT NULL,
    "Bank" text NOT NULL,
    employer_date text NOT NULL,
    workload text NOT NULL,
    create_date_time timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    last_changed_date_time timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL
);
    DROP TABLE public."Employers";
       public         heap    root    false            �            1259    34217    Employers_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Employers_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public."Employers_id_seq";
       public          root    false    249            �           0    0    Employers_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public."Employers_id_seq" OWNED BY public."Employers".id;
          public          root    false    248            �            1259    25295    IPAddressWithUserPermission    TABLE     V  CREATE TABLE public."IPAddressWithUserPermission" (
    id integer NOT NULL,
    "ipAddress" text NOT NULL,
    city text NOT NULL,
    region text NOT NULL,
    country text NOT NULL,
    hostname text NOT NULL,
    total_access_by_ip_address text NOT NULL,
    create_date_time timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    last_access_date_time timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    last_changed_date_time timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    ip_address_id integer NOT NULL,
    postal text NOT NULL
);
 1   DROP TABLE public."IPAddressWithUserPermission";
       public         heap    root    false            �            1259    25294 "   IPAddressWithUserPermission_id_seq    SEQUENCE     �   CREATE SEQUENCE public."IPAddressWithUserPermission_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ;   DROP SEQUENCE public."IPAddressWithUserPermission_id_seq";
       public          root    false    247            �           0    0 "   IPAddressWithUserPermission_id_seq    SEQUENCE OWNED BY     m   ALTER SEQUENCE public."IPAddressWithUserPermission_id_seq" OWNED BY public."IPAddressWithUserPermission".id;
          public          root    false    246            �            1259    25283    IPAddressWithoutUser    TABLE     �  CREATE TABLE public."IPAddressWithoutUser" (
    id integer NOT NULL,
    "ipAddress" text NOT NULL,
    total_access_by_ip_address text NOT NULL,
    create_date_time timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    last_access_date_time timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    last_changed_date_time timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL
);
 *   DROP TABLE public."IPAddressWithoutUser";
       public         heap    root    false            �            1259    25282    IPAddressWithoutUser_id_seq    SEQUENCE     �   CREATE SEQUENCE public."IPAddressWithoutUser_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public."IPAddressWithoutUser_id_seq";
       public          root    false    245            �           0    0    IPAddressWithoutUser_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public."IPAddressWithoutUser_id_seq" OWNED BY public."IPAddressWithoutUser".id;
          public          root    false    244            �            1259    25266    ProductCommentaries    TABLE     �  CREATE TABLE public."ProductCommentaries" (
    id integer NOT NULL,
    name text NOT NULL,
    commentary text NOT NULL,
    product_category text NOT NULL,
    products_id integer NOT NULL,
    "User_Id" integer NOT NULL,
    date_commentary timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    create_date_time timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    last_changed_date_time timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL
);
 )   DROP TABLE public."ProductCommentaries";
       public         heap    root    false            �            1259    25265    ProductCommentaries_id_seq    SEQUENCE     �   CREATE SEQUENCE public."ProductCommentaries_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public."ProductCommentaries_id_seq";
       public          root    false    243            �           0    0    ProductCommentaries_id_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public."ProductCommentaries_id_seq" OWNED BY public."ProductCommentaries".id;
          public          root    false    242            �            1259    24989 	   Suppliers    TABLE     �   CREATE TABLE public."Suppliers" (
    id integer NOT NULL,
    "NIF" text NOT NULL,
    "User_Id" integer NOT NULL,
    name text NOT NULL,
    phone text NOT NULL,
    shipping_method text NOT NULL
);
    DROP TABLE public."Suppliers";
       public         heap    root    false            �            1259    25050    SuppliersSecretInformation    TABLE     b  CREATE TABLE public."SuppliersSecretInformation" (
    id integer NOT NULL,
    "CEP" text NOT NULL,
    "User_Id" integer NOT NULL,
    bank_account_holder text NOT NULL,
    bank_account_number text NOT NULL,
    bank_agency text NOT NULL,
    bank_name text NOT NULL,
    city text NOT NULL,
    road text NOT NULL,
    supplier_name text NOT NULL
);
 0   DROP TABLE public."SuppliersSecretInformation";
       public         heap    root    false            �            1259    25049 !   SuppliersSecretInformation_id_seq    SEQUENCE     �   CREATE SEQUENCE public."SuppliersSecretInformation_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 :   DROP SEQUENCE public."SuppliersSecretInformation_id_seq";
       public          root    false    225            �           0    0 !   SuppliersSecretInformation_id_seq    SEQUENCE OWNED BY     k   ALTER SEQUENCE public."SuppliersSecretInformation_id_seq" OWNED BY public."SuppliersSecretInformation".id;
          public          root    false    224            �            1259    24988    Suppliers_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Suppliers_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public."Suppliers_id_seq";
       public          root    false    219            �           0    0    Suppliers_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public."Suppliers_id_seq" OWNED BY public."Suppliers".id;
          public          root    false    218            �            1259    24951    User    TABLE     �  CREATE TABLE public."User" (
    id integer NOT NULL,
    name text NOT NULL,
    email text NOT NULL,
    password text NOT NULL,
    phone text NOT NULL,
    create_date_time timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    last_changed_date_time timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    last_name text NOT NULL,
    admin text NOT NULL,
    disable text NOT NULL
);
    DROP TABLE public."User";
       public         heap    root    false            �            1259    25252    UserAddress    TABLE     5  CREATE TABLE public."UserAddress" (
    id integer NOT NULL,
    name text NOT NULL,
    last_name text NOT NULL,
    address text NOT NULL,
    address_other text NOT NULL,
    city text NOT NULL,
    state text NOT NULL,
    "CEP" text NOT NULL,
    "User_Id" integer NOT NULL,
    country text NOT NULL
);
 !   DROP TABLE public."UserAddress";
       public         heap    root    false            �            1259    25251    UserAddress_id_seq    SEQUENCE     �   CREATE SEQUENCE public."UserAddress_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public."UserAddress_id_seq";
       public          root    false    241            �           0    0    UserAddress_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public."UserAddress_id_seq" OWNED BY public."UserAddress".id;
          public          root    false    240            �            1259    24950    User_id_seq    SEQUENCE     �   CREATE SEQUENCE public."User_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public."User_id_seq";
       public          root    false    217            �           0    0    User_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public."User_id_seq" OWNED BY public."User".id;
          public          root    false    216            �            1259    24941    _prisma_migrations    TABLE     �  CREATE TABLE public._prisma_migrations (
    id character varying(36) NOT NULL,
    checksum character varying(64) NOT NULL,
    finished_at timestamp with time zone,
    migration_name character varying(255) NOT NULL,
    logs text,
    rolled_back_at timestamp with time zone,
    started_at timestamp with time zone DEFAULT now() NOT NULL,
    applied_steps_count integer DEFAULT 0 NOT NULL
);
 &   DROP TABLE public._prisma_migrations;
       public         heap    root    false            �            1259    25185 
   acessorios    TABLE     �  CREATE TABLE public.acessorios (
    id integer NOT NULL,
    "Marca" text NOT NULL,
    "Fabricante" text NOT NULL,
    "Fornecedor" text NOT NULL,
    montagem_necessaria text NOT NULL,
    bateria_pilha text NOT NULL,
    bateria_inclusa text NOT NULL,
    tipo_da_bateria text NOT NULL,
    "Tipo_de_soquete_do_processador" text NOT NULL,
    "Peso_do_produto" text NOT NULL,
    "Dimensoes_da_embalagem" text NOT NULL,
    "Codigo" text NOT NULL,
    "Quantidade_em_estoque" text NOT NULL,
    "User_Id" integer NOT NULL,
    "Valor_a_vista" text NOT NULL,
    "Valor_a_prazo" text NOT NULL,
    "Codigo_das_Imagens" text NOT NULL,
    "Dimensoes_do_pacote" text NOT NULL,
    "Descricao_final_sobre_o_produto" text NOT NULL
);
    DROP TABLE public.acessorios;
       public         heap    root    false            �            1259    25184    acessorios_id_seq    SEQUENCE     �   CREATE SEQUENCE public.acessorios_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.acessorios_id_seq;
       public          root    false    237            �           0    0    acessorios_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.acessorios_id_seq OWNED BY public.acessorios.id;
          public          root    false    236            �            1259    24998    drop_packages    TABLE     n  CREATE TABLE public.drop_packages (
    id integer NOT NULL,
    product_name text NOT NULL,
    min_price text NOT NULL,
    model_product text NOT NULL,
    "User_Id" integer NOT NULL,
    brand text NOT NULL,
    categories text NOT NULL,
    code text NOT NULL,
    description text NOT NULL,
    products_state text NOT NULL,
    supplier_name text NOT NULL
);
 !   DROP TABLE public.drop_packages;
       public         heap    root    false            �            1259    24997    drop_packages_id_seq    SEQUENCE     �   CREATE SEQUENCE public.drop_packages_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.drop_packages_id_seq;
       public          root    false    221            �           0    0    drop_packages_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.drop_packages_id_seq OWNED BY public.drop_packages.id;
          public          root    false    220            �            1259    25194    hardware    TABLE     �  CREATE TABLE public.hardware (
    id integer NOT NULL,
    "Marca" text NOT NULL,
    "Fabricante" text NOT NULL,
    "Tipo_de_Hardware" text NOT NULL,
    "Arquitetura" text NOT NULL,
    "Velocidade_do_Clock" text NOT NULL,
    "Nucleos_e_Threads" text NOT NULL,
    "Capacidade_de_Armazenamento" text NOT NULL,
    "Tamanho_da_Memoria_RAM" text NOT NULL,
    "Conectividade" text NOT NULL,
    "Tamanho_Fisico" text NOT NULL,
    "Peso" text NOT NULL,
    "Consumo_de_Energia" text NOT NULL,
    "Compatibilidade" text NOT NULL,
    "Interfaces" text NOT NULL,
    "Drivers" text NOT NULL,
    "Outras_Caracteristicas" text NOT NULL,
    "User_Id" integer NOT NULL,
    "Valor_a_vista" text NOT NULL,
    "Valor_a_prazo" text NOT NULL,
    "Codigo_das_Imagens" text NOT NULL,
    "Dimensoes_do_pacote" text NOT NULL,
    "Descricao_final_sobre_o_produto" text NOT NULL,
    "Fornecedor" text NOT NULL,
    "Codigo" text NOT NULL
);
    DROP TABLE public.hardware;
       public         heap    root    false            �            1259    25193    hardware_id_seq    SEQUENCE     �   CREATE SEQUENCE public.hardware_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.hardware_id_seq;
       public          root    false    239            �           0    0    hardware_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.hardware_id_seq OWNED BY public.hardware.id;
          public          root    false    238            �            1259    25122    large_image    TABLE     �   CREATE TABLE public.large_image (
    id integer NOT NULL,
    large_image text NOT NULL,
    codigo_das_imagens text NOT NULL
);
    DROP TABLE public.large_image;
       public         heap    root    false            �            1259    25121    large_image_id_seq    SEQUENCE     �   CREATE SEQUENCE public.large_image_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.large_image_id_seq;
       public          root    false    231            �           0    0    large_image_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.large_image_id_seq OWNED BY public.large_image.id;
          public          root    false    230            �            1259    25140 	   notebooks    TABLE     �  CREATE TABLE public.notebooks (
    id integer NOT NULL,
    "Marca" text NOT NULL,
    "Fabricante" text NOT NULL,
    "Marca_do_processador" text NOT NULL,
    "Tipo_de_processador" text NOT NULL,
    "Velocidade_do_processador" text NOT NULL,
    "Tipo_de_soquete_do_processador" text NOT NULL,
    "Numero_de_processadores" text NOT NULL,
    "Tamanho_da_memoria" text NOT NULL,
    "Tecnologia_da_memoria" text NOT NULL,
    "Tipo_de_Memoria" text NOT NULL,
    "Tamanho_do_HD" text NOT NULL,
    "Tecnologia_do_HD" text NOT NULL,
    "Interface_do_HD" text NOT NULL,
    "Marca_do_chipset_de_video" text NOT NULL,
    "Descricao_da_placa_de_video" text NOT NULL,
    "Tipo_de_conexao" text NOT NULL,
    "Plataforma_de_hardware" text NOT NULL,
    "Sistema_operacional" text NOT NULL,
    "User_Id" integer NOT NULL,
    "Valor_a_vista" text NOT NULL,
    "Valor_a_prazo" text NOT NULL,
    "Codigo_das_Imagens" text NOT NULL,
    "Dimensoes_do_pacote" text NOT NULL,
    "Descricao_final_sobre_o_produto" text NOT NULL,
    "Audio_integrado" text NOT NULL,
    "Bateria_interna" text NOT NULL,
    "Conectividade_sem_fio" text NOT NULL,
    "Leitor_de_cartoes_de_memoria" text NOT NULL,
    "Tamanho_da_tela" text NOT NULL,
    "Teclado_e_touchpad" text NOT NULL,
    "Tela_sensivel_ao_toque" text NOT NULL,
    "Webcam_embutida" text NOT NULL,
    "Fornecedor" text NOT NULL,
    "Codigo" text NOT NULL
);
    DROP TABLE public.notebooks;
       public         heap    root    false            �            1259    25139    notebooks_id_seq    SEQUENCE     �   CREATE SEQUENCE public.notebooks_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.notebooks_id_seq;
       public          root    false    235            �           0    0    notebooks_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.notebooks_id_seq OWNED BY public.notebooks.id;
          public          root    false    234            �            1259    25099    product_order    TABLE     �   CREATE TABLE public.product_order (
    id integer NOT NULL,
    id_pedido integer NOT NULL,
    categoria_pedido text NOT NULL,
    codigo_do_pedido text NOT NULL,
    "User_Id" integer NOT NULL
);
 !   DROP TABLE public.product_order;
       public         heap    root    false            �            1259    25098    product_order_id_seq    SEQUENCE     �   CREATE SEQUENCE public.product_order_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.product_order_id_seq;
       public          root    false    227            �           0    0    product_order_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.product_order_id_seq OWNED BY public.product_order.id;
          public          root    false    226            �            1259    25113    product_properties    TABLE     �   CREATE TABLE public.product_properties (
    id integer NOT NULL,
    codigo_do_produto text NOT NULL,
    categoria_do_produto text NOT NULL
);
 &   DROP TABLE public.product_properties;
       public         heap    root    false            �            1259    25112    product_properties_id_seq    SEQUENCE     �   CREATE SEQUENCE public.product_properties_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.product_properties_id_seq;
       public          root    false    229            �           0    0    product_properties_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.product_properties_id_seq OWNED BY public.product_properties.id;
          public          root    false    228            �            1259    25131    side_images    TABLE     �   CREATE TABLE public.side_images (
    id integer NOT NULL,
    first_image text NOT NULL,
    second_image text NOT NULL,
    third_image text NOT NULL,
    image_code text NOT NULL,
    fourth_image text NOT NULL
);
    DROP TABLE public.side_images;
       public         heap    root    false            �            1259    25130    side_images_id_seq    SEQUENCE     �   CREATE SEQUENCE public.side_images_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.side_images_id_seq;
       public          root    false    233            �           0    0    side_images_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.side_images_id_seq OWNED BY public.side_images.id;
          public          root    false    232            �           2604    25010    Computers id    DEFAULT     p   ALTER TABLE ONLY public."Computers" ALTER COLUMN id SET DEFAULT nextval('public."Computers_id_seq"'::regclass);
 =   ALTER TABLE public."Computers" ALTER COLUMN id DROP DEFAULT;
       public          root    false    223    222    223            �           2604    34221    Employers id    DEFAULT     p   ALTER TABLE ONLY public."Employers" ALTER COLUMN id SET DEFAULT nextval('public."Employers_id_seq"'::regclass);
 =   ALTER TABLE public."Employers" ALTER COLUMN id DROP DEFAULT;
       public          root    false    248    249    249            �           2604    25298    IPAddressWithUserPermission id    DEFAULT     �   ALTER TABLE ONLY public."IPAddressWithUserPermission" ALTER COLUMN id SET DEFAULT nextval('public."IPAddressWithUserPermission_id_seq"'::regclass);
 O   ALTER TABLE public."IPAddressWithUserPermission" ALTER COLUMN id DROP DEFAULT;
       public          root    false    247    246    247            �           2604    25286    IPAddressWithoutUser id    DEFAULT     �   ALTER TABLE ONLY public."IPAddressWithoutUser" ALTER COLUMN id SET DEFAULT nextval('public."IPAddressWithoutUser_id_seq"'::regclass);
 H   ALTER TABLE public."IPAddressWithoutUser" ALTER COLUMN id DROP DEFAULT;
       public          root    false    244    245    245            �           2604    25269    ProductCommentaries id    DEFAULT     �   ALTER TABLE ONLY public."ProductCommentaries" ALTER COLUMN id SET DEFAULT nextval('public."ProductCommentaries_id_seq"'::regclass);
 G   ALTER TABLE public."ProductCommentaries" ALTER COLUMN id DROP DEFAULT;
       public          root    false    243    242    243            �           2604    24992    Suppliers id    DEFAULT     p   ALTER TABLE ONLY public."Suppliers" ALTER COLUMN id SET DEFAULT nextval('public."Suppliers_id_seq"'::regclass);
 =   ALTER TABLE public."Suppliers" ALTER COLUMN id DROP DEFAULT;
       public          root    false    218    219    219            �           2604    25053    SuppliersSecretInformation id    DEFAULT     �   ALTER TABLE ONLY public."SuppliersSecretInformation" ALTER COLUMN id SET DEFAULT nextval('public."SuppliersSecretInformation_id_seq"'::regclass);
 N   ALTER TABLE public."SuppliersSecretInformation" ALTER COLUMN id DROP DEFAULT;
       public          root    false    224    225    225            �           2604    24954    User id    DEFAULT     f   ALTER TABLE ONLY public."User" ALTER COLUMN id SET DEFAULT nextval('public."User_id_seq"'::regclass);
 8   ALTER TABLE public."User" ALTER COLUMN id DROP DEFAULT;
       public          root    false    216    217    217            �           2604    25255    UserAddress id    DEFAULT     t   ALTER TABLE ONLY public."UserAddress" ALTER COLUMN id SET DEFAULT nextval('public."UserAddress_id_seq"'::regclass);
 ?   ALTER TABLE public."UserAddress" ALTER COLUMN id DROP DEFAULT;
       public          root    false    241    240    241            �           2604    25188    acessorios id    DEFAULT     n   ALTER TABLE ONLY public.acessorios ALTER COLUMN id SET DEFAULT nextval('public.acessorios_id_seq'::regclass);
 <   ALTER TABLE public.acessorios ALTER COLUMN id DROP DEFAULT;
       public          root    false    237    236    237            �           2604    25001    drop_packages id    DEFAULT     t   ALTER TABLE ONLY public.drop_packages ALTER COLUMN id SET DEFAULT nextval('public.drop_packages_id_seq'::regclass);
 ?   ALTER TABLE public.drop_packages ALTER COLUMN id DROP DEFAULT;
       public          root    false    220    221    221            �           2604    25197    hardware id    DEFAULT     j   ALTER TABLE ONLY public.hardware ALTER COLUMN id SET DEFAULT nextval('public.hardware_id_seq'::regclass);
 :   ALTER TABLE public.hardware ALTER COLUMN id DROP DEFAULT;
       public          root    false    239    238    239            �           2604    25125    large_image id    DEFAULT     p   ALTER TABLE ONLY public.large_image ALTER COLUMN id SET DEFAULT nextval('public.large_image_id_seq'::regclass);
 =   ALTER TABLE public.large_image ALTER COLUMN id DROP DEFAULT;
       public          root    false    230    231    231            �           2604    25143    notebooks id    DEFAULT     l   ALTER TABLE ONLY public.notebooks ALTER COLUMN id SET DEFAULT nextval('public.notebooks_id_seq'::regclass);
 ;   ALTER TABLE public.notebooks ALTER COLUMN id DROP DEFAULT;
       public          root    false    234    235    235            �           2604    25102    product_order id    DEFAULT     t   ALTER TABLE ONLY public.product_order ALTER COLUMN id SET DEFAULT nextval('public.product_order_id_seq'::regclass);
 ?   ALTER TABLE public.product_order ALTER COLUMN id DROP DEFAULT;
       public          root    false    226    227    227            �           2604    25116    product_properties id    DEFAULT     ~   ALTER TABLE ONLY public.product_properties ALTER COLUMN id SET DEFAULT nextval('public.product_properties_id_seq'::regclass);
 D   ALTER TABLE public.product_properties ALTER COLUMN id DROP DEFAULT;
       public          root    false    229    228    229            �           2604    25134    side_images id    DEFAULT     p   ALTER TABLE ONLY public.side_images ALTER COLUMN id SET DEFAULT nextval('public.side_images_id_seq'::regclass);
 =   ALTER TABLE public.side_images ALTER COLUMN id DROP DEFAULT;
       public          root    false    233    232    233            �          0    25007 	   Computers 
   TABLE DATA           �  COPY public."Computers" (id, "Marca", "Fabricante", "Formato", "Marca_do_processador", "Tipo_de_processador", "Velocidade_do_processador", "Tipo_de_soquete_do_processador", "Numero_de_processadores", "Tamanho_da_memoria", "Tecnologia_da_memoria", "Tipo_de_Memoria", "Tamanho_do_HD", "Tecnologia_do_HD", "Interface_do_HD", "Marca_do_chipset_de_video", "Descricao_da_placa_de_video", "Tipo_de_conexao", "Tecnologia_de_conexao", "Plataforma_de_hardware", "Sistema_operacional", "Peso_do_produto", "Dimensoes_da_embalagem", "Codigo", "Quantidade_em_estoque", "Codigo_das_Imagens", "Dimensoes_do_pacote", "Descricao_final_sobre_o_produto", "User_Id", "Fornecedor", "Valor_a_prazo", "Valor_a_vista") FROM stdin;
    public          root    false    223   ��       �          0    34218 	   Employers 
   TABLE DATA             COPY public."Employers" (id, name, last_name, email, "Employee_gender", password, "numberJob", "position", employee_code, address, "RG", "CPF", phone, employee_supervisor, bank_account, agency, "Bank", employer_date, workload, create_date_time, last_changed_date_time) FROM stdin;
    public          root    false    249   �       �          0    25295    IPAddressWithUserPermission 
   TABLE DATA           �   COPY public."IPAddressWithUserPermission" (id, "ipAddress", city, region, country, hostname, total_access_by_ip_address, create_date_time, last_access_date_time, last_changed_date_time, ip_address_id, postal) FROM stdin;
    public          root    false    247   ��       �          0    25283    IPAddressWithoutUser 
   TABLE DATA           �   COPY public."IPAddressWithoutUser" (id, "ipAddress", total_access_by_ip_address, create_date_time, last_access_date_time, last_changed_date_time) FROM stdin;
    public          root    false    245   R�       �          0    25266    ProductCommentaries 
   TABLE DATA           �   COPY public."ProductCommentaries" (id, name, commentary, product_category, products_id, "User_Id", date_commentary, create_date_time, last_changed_date_time) FROM stdin;
    public          root    false    243   ��       �          0    24989 	   Suppliers 
   TABLE DATA           Y   COPY public."Suppliers" (id, "NIF", "User_Id", name, phone, shipping_method) FROM stdin;
    public          root    false    219   �       �          0    25050    SuppliersSecretInformation 
   TABLE DATA           �   COPY public."SuppliersSecretInformation" (id, "CEP", "User_Id", bank_account_holder, bank_account_number, bank_agency, bank_name, city, road, supplier_name) FROM stdin;
    public          root    false    225   U�       �          0    24951    User 
   TABLE DATA           �   COPY public."User" (id, name, email, password, phone, create_date_time, last_changed_date_time, last_name, admin, disable) FROM stdin;
    public          root    false    217   ��       �          0    25252    UserAddress 
   TABLE DATA           |   COPY public."UserAddress" (id, name, last_name, address, address_other, city, state, "CEP", "User_Id", country) FROM stdin;
    public          root    false    241   ��       �          0    24941    _prisma_migrations 
   TABLE DATA           �   COPY public._prisma_migrations (id, checksum, finished_at, migration_name, logs, rolled_back_at, started_at, applied_steps_count) FROM stdin;
    public          root    false    215   ��       �          0    25185 
   acessorios 
   TABLE DATA           �  COPY public.acessorios (id, "Marca", "Fabricante", "Fornecedor", montagem_necessaria, bateria_pilha, bateria_inclusa, tipo_da_bateria, "Tipo_de_soquete_do_processador", "Peso_do_produto", "Dimensoes_da_embalagem", "Codigo", "Quantidade_em_estoque", "User_Id", "Valor_a_vista", "Valor_a_prazo", "Codigo_das_Imagens", "Dimensoes_do_pacote", "Descricao_final_sobre_o_produto") FROM stdin;
    public          root    false    237   ?�       �          0    24998    drop_packages 
   TABLE DATA           �   COPY public.drop_packages (id, product_name, min_price, model_product, "User_Id", brand, categories, code, description, products_state, supplier_name) FROM stdin;
    public          root    false    221   b�       �          0    25194    hardware 
   TABLE DATA           �  COPY public.hardware (id, "Marca", "Fabricante", "Tipo_de_Hardware", "Arquitetura", "Velocidade_do_Clock", "Nucleos_e_Threads", "Capacidade_de_Armazenamento", "Tamanho_da_Memoria_RAM", "Conectividade", "Tamanho_Fisico", "Peso", "Consumo_de_Energia", "Compatibilidade", "Interfaces", "Drivers", "Outras_Caracteristicas", "User_Id", "Valor_a_vista", "Valor_a_prazo", "Codigo_das_Imagens", "Dimensoes_do_pacote", "Descricao_final_sobre_o_produto", "Fornecedor", "Codigo") FROM stdin;
    public          root    false    239   �       �          0    25122    large_image 
   TABLE DATA           J   COPY public.large_image (id, large_image, codigo_das_imagens) FROM stdin;
    public          root    false    231   ��       �          0    25140 	   notebooks 
   TABLE DATA             COPY public.notebooks (id, "Marca", "Fabricante", "Marca_do_processador", "Tipo_de_processador", "Velocidade_do_processador", "Tipo_de_soquete_do_processador", "Numero_de_processadores", "Tamanho_da_memoria", "Tecnologia_da_memoria", "Tipo_de_Memoria", "Tamanho_do_HD", "Tecnologia_do_HD", "Interface_do_HD", "Marca_do_chipset_de_video", "Descricao_da_placa_de_video", "Tipo_de_conexao", "Plataforma_de_hardware", "Sistema_operacional", "User_Id", "Valor_a_vista", "Valor_a_prazo", "Codigo_das_Imagens", "Dimensoes_do_pacote", "Descricao_final_sobre_o_produto", "Audio_integrado", "Bateria_interna", "Conectividade_sem_fio", "Leitor_de_cartoes_de_memoria", "Tamanho_da_tela", "Teclado_e_touchpad", "Tela_sensivel_ao_toque", "Webcam_embutida", "Fornecedor", "Codigo") FROM stdin;
    public          root    false    235   H�       �          0    25099    product_order 
   TABLE DATA           e   COPY public.product_order (id, id_pedido, categoria_pedido, codigo_do_pedido, "User_Id") FROM stdin;
    public          root    false    227   ��       �          0    25113    product_properties 
   TABLE DATA           Y   COPY public.product_properties (id, codigo_do_produto, categoria_do_produto) FROM stdin;
    public          root    false    229   1�       �          0    25131    side_images 
   TABLE DATA           k   COPY public.side_images (id, first_image, second_image, third_image, image_code, fourth_image) FROM stdin;
    public          root    false    233   ��       �           0    0    Computers_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public."Computers_id_seq"', 19, true);
          public          root    false    222            �           0    0    Employers_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public."Employers_id_seq"', 3, true);
          public          root    false    248            �           0    0 "   IPAddressWithUserPermission_id_seq    SEQUENCE SET     T   SELECT pg_catalog.setval('public."IPAddressWithUserPermission_id_seq"', 189, true);
          public          root    false    246            �           0    0    IPAddressWithoutUser_id_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public."IPAddressWithoutUser_id_seq"', 189, true);
          public          root    false    244            �           0    0    ProductCommentaries_id_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public."ProductCommentaries_id_seq"', 1, false);
          public          root    false    242            �           0    0 !   SuppliersSecretInformation_id_seq    SEQUENCE SET     Q   SELECT pg_catalog.setval('public."SuppliersSecretInformation_id_seq"', 1, true);
          public          root    false    224            �           0    0    Suppliers_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public."Suppliers_id_seq"', 1, true);
          public          root    false    218            �           0    0    UserAddress_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public."UserAddress_id_seq"', 33, true);
          public          root    false    240                        0    0    User_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public."User_id_seq"', 2, true);
          public          root    false    216                       0    0    acessorios_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.acessorios_id_seq', 14, true);
          public          root    false    236                       0    0    drop_packages_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.drop_packages_id_seq', 5, true);
          public          root    false    220                       0    0    hardware_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.hardware_id_seq', 13, true);
          public          root    false    238                       0    0    large_image_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.large_image_id_seq', 30, true);
          public          root    false    230                       0    0    notebooks_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.notebooks_id_seq', 16, true);
          public          root    false    234                       0    0    product_order_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.product_order_id_seq', 9, true);
          public          root    false    226                       0    0    product_properties_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.product_properties_id_seq', 30, true);
          public          root    false    228                       0    0    side_images_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.side_images_id_seq', 30, true);
          public          root    false    232                       2606    25014    Computers Computers_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public."Computers"
    ADD CONSTRAINT "Computers_pkey" PRIMARY KEY (id);
 F   ALTER TABLE ONLY public."Computers" DROP CONSTRAINT "Computers_pkey";
       public            root    false    223            #           2606    34227    Employers Employers_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public."Employers"
    ADD CONSTRAINT "Employers_pkey" PRIMARY KEY (id);
 F   ALTER TABLE ONLY public."Employers" DROP CONSTRAINT "Employers_pkey";
       public            root    false    249                        2606    25305 <   IPAddressWithUserPermission IPAddressWithUserPermission_pkey 
   CONSTRAINT     ~   ALTER TABLE ONLY public."IPAddressWithUserPermission"
    ADD CONSTRAINT "IPAddressWithUserPermission_pkey" PRIMARY KEY (id);
 j   ALTER TABLE ONLY public."IPAddressWithUserPermission" DROP CONSTRAINT "IPAddressWithUserPermission_pkey";
       public            root    false    247                       2606    25293 .   IPAddressWithoutUser IPAddressWithoutUser_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public."IPAddressWithoutUser"
    ADD CONSTRAINT "IPAddressWithoutUser_pkey" PRIMARY KEY (id);
 \   ALTER TABLE ONLY public."IPAddressWithoutUser" DROP CONSTRAINT "IPAddressWithoutUser_pkey";
       public            root    false    245                       2606    25276 ,   ProductCommentaries ProductCommentaries_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY public."ProductCommentaries"
    ADD CONSTRAINT "ProductCommentaries_pkey" PRIMARY KEY (id);
 Z   ALTER TABLE ONLY public."ProductCommentaries" DROP CONSTRAINT "ProductCommentaries_pkey";
       public            root    false    243                       2606    25057 :   SuppliersSecretInformation SuppliersSecretInformation_pkey 
   CONSTRAINT     |   ALTER TABLE ONLY public."SuppliersSecretInformation"
    ADD CONSTRAINT "SuppliersSecretInformation_pkey" PRIMARY KEY (id);
 h   ALTER TABLE ONLY public."SuppliersSecretInformation" DROP CONSTRAINT "SuppliersSecretInformation_pkey";
       public            root    false    225            �           2606    24996    Suppliers Suppliers_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public."Suppliers"
    ADD CONSTRAINT "Suppliers_pkey" PRIMARY KEY (id);
 F   ALTER TABLE ONLY public."Suppliers" DROP CONSTRAINT "Suppliers_pkey";
       public            root    false    219                       2606    25259    UserAddress UserAddress_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public."UserAddress"
    ADD CONSTRAINT "UserAddress_pkey" PRIMARY KEY (id);
 J   ALTER TABLE ONLY public."UserAddress" DROP CONSTRAINT "UserAddress_pkey";
       public            root    false    241            �           2606    24960    User User_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public."User"
    ADD CONSTRAINT "User_pkey" PRIMARY KEY (id);
 <   ALTER TABLE ONLY public."User" DROP CONSTRAINT "User_pkey";
       public            root    false    217            �           2606    24949 *   _prisma_migrations _prisma_migrations_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public._prisma_migrations
    ADD CONSTRAINT _prisma_migrations_pkey PRIMARY KEY (id);
 T   ALTER TABLE ONLY public._prisma_migrations DROP CONSTRAINT _prisma_migrations_pkey;
       public            root    false    215                       2606    25192    acessorios acessorios_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.acessorios
    ADD CONSTRAINT acessorios_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.acessorios DROP CONSTRAINT acessorios_pkey;
       public            root    false    237                       2606    25005     drop_packages drop_packages_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.drop_packages
    ADD CONSTRAINT drop_packages_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.drop_packages DROP CONSTRAINT drop_packages_pkey;
       public            root    false    221                       2606    25201    hardware hardware_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.hardware
    ADD CONSTRAINT hardware_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.hardware DROP CONSTRAINT hardware_pkey;
       public            root    false    239                       2606    25129    large_image large_image_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.large_image
    ADD CONSTRAINT large_image_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.large_image DROP CONSTRAINT large_image_pkey;
       public            root    false    231                       2606    25147    notebooks notebooks_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.notebooks
    ADD CONSTRAINT notebooks_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.notebooks DROP CONSTRAINT notebooks_pkey;
       public            root    false    235            	           2606    25106     product_order product_order_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.product_order
    ADD CONSTRAINT product_order_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.product_order DROP CONSTRAINT product_order_pkey;
       public            root    false    227                       2606    25120 *   product_properties product_properties_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.product_properties
    ADD CONSTRAINT product_properties_pkey PRIMARY KEY (id);
 T   ALTER TABLE ONLY public.product_properties DROP CONSTRAINT product_properties_pkey;
       public            root    false    229                       2606    25138    side_images side_images_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.side_images
    ADD CONSTRAINT side_images_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.side_images DROP CONSTRAINT side_images_pkey;
       public            root    false    233                       1259    25018    Computers_id_key    INDEX     O   CREATE UNIQUE INDEX "Computers_id_key" ON public."Computers" USING btree (id);
 &   DROP INDEX public."Computers_id_key";
       public            root    false    223            !           1259    34228    Employers_email_key    INDEX     U   CREATE UNIQUE INDEX "Employers_email_key" ON public."Employers" USING btree (email);
 )   DROP INDEX public."Employers_email_key";
       public            root    false    249                       1259    25058 !   SuppliersSecretInformation_id_key    INDEX     q   CREATE UNIQUE INDEX "SuppliersSecretInformation_id_key" ON public."SuppliersSecretInformation" USING btree (id);
 7   DROP INDEX public."SuppliersSecretInformation_id_key";
       public            root    false    225            �           1259    25016    Suppliers_id_key    INDEX     O   CREATE UNIQUE INDEX "Suppliers_id_key" ON public."Suppliers" USING btree (id);
 &   DROP INDEX public."Suppliers_id_key";
       public            root    false    219            �           1259    25015    User_email_key    INDEX     K   CREATE UNIQUE INDEX "User_email_key" ON public."User" USING btree (email);
 $   DROP INDEX public."User_email_key";
       public            root    false    217                       1259    25202    acessorios_id_key    INDEX     M   CREATE UNIQUE INDEX acessorios_id_key ON public.acessorios USING btree (id);
 %   DROP INDEX public.acessorios_id_key;
       public            root    false    237            �           1259    25017    drop_packages_id_key    INDEX     S   CREATE UNIQUE INDEX drop_packages_id_key ON public.drop_packages USING btree (id);
 (   DROP INDEX public.drop_packages_id_key;
       public            root    false    221                       1259    25203    hardware_id_key    INDEX     I   CREATE UNIQUE INDEX hardware_id_key ON public.hardware USING btree (id);
 #   DROP INDEX public.hardware_id_key;
       public            root    false    239                       1259    25148    notebooks_id_key    INDEX     K   CREATE UNIQUE INDEX notebooks_id_key ON public.notebooks USING btree (id);
 $   DROP INDEX public.notebooks_id_key;
       public            root    false    235            &           2606    25044     Computers Computers_User_Id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Computers"
    ADD CONSTRAINT "Computers_User_Id_fkey" FOREIGN KEY ("User_Id") REFERENCES public."User"(id) ON UPDATE CASCADE ON DELETE RESTRICT;
 N   ALTER TABLE ONLY public."Computers" DROP CONSTRAINT "Computers_User_Id_fkey";
       public          root    false    3323    223    217            .           2606    25306 J   IPAddressWithUserPermission IPAddressWithUserPermission_ip_address_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."IPAddressWithUserPermission"
    ADD CONSTRAINT "IPAddressWithUserPermission_ip_address_id_fkey" FOREIGN KEY (ip_address_id) REFERENCES public."IPAddressWithoutUser"(id) ON UPDATE CASCADE ON DELETE RESTRICT;
 x   ALTER TABLE ONLY public."IPAddressWithUserPermission" DROP CONSTRAINT "IPAddressWithUserPermission_ip_address_id_fkey";
       public          root    false    245    3358    247            -           2606    25277 4   ProductCommentaries ProductCommentaries_User_Id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."ProductCommentaries"
    ADD CONSTRAINT "ProductCommentaries_User_Id_fkey" FOREIGN KEY ("User_Id") REFERENCES public."User"(id) ON UPDATE CASCADE ON DELETE RESTRICT;
 b   ALTER TABLE ONLY public."ProductCommentaries" DROP CONSTRAINT "ProductCommentaries_User_Id_fkey";
       public          root    false    3323    243    217            '           2606    25064 B   SuppliersSecretInformation SuppliersSecretInformation_User_Id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."SuppliersSecretInformation"
    ADD CONSTRAINT "SuppliersSecretInformation_User_Id_fkey" FOREIGN KEY ("User_Id") REFERENCES public."User"(id) ON UPDATE CASCADE ON DELETE RESTRICT;
 p   ALTER TABLE ONLY public."SuppliersSecretInformation" DROP CONSTRAINT "SuppliersSecretInformation_User_Id_fkey";
       public          root    false    225    3323    217            $           2606    25059     Suppliers Suppliers_User_Id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Suppliers"
    ADD CONSTRAINT "Suppliers_User_Id_fkey" FOREIGN KEY ("User_Id") REFERENCES public."User"(id) ON UPDATE CASCADE ON DELETE RESTRICT;
 N   ALTER TABLE ONLY public."Suppliers" DROP CONSTRAINT "Suppliers_User_Id_fkey";
       public          root    false    219    3323    217            ,           2606    25260 $   UserAddress UserAddress_User_Id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."UserAddress"
    ADD CONSTRAINT "UserAddress_User_Id_fkey" FOREIGN KEY ("User_Id") REFERENCES public."User"(id) ON UPDATE CASCADE ON DELETE RESTRICT;
 R   ALTER TABLE ONLY public."UserAddress" DROP CONSTRAINT "UserAddress_User_Id_fkey";
       public          root    false    241    3323    217            *           2606    25234 "   acessorios acessorios_User_Id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.acessorios
    ADD CONSTRAINT "acessorios_User_Id_fkey" FOREIGN KEY ("User_Id") REFERENCES public."User"(id) ON UPDATE CASCADE ON DELETE RESTRICT;
 N   ALTER TABLE ONLY public.acessorios DROP CONSTRAINT "acessorios_User_Id_fkey";
       public          root    false    237    3323    217            %           2606    25034 (   drop_packages drop_packages_User_Id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.drop_packages
    ADD CONSTRAINT "drop_packages_User_Id_fkey" FOREIGN KEY ("User_Id") REFERENCES public."User"(id) ON UPDATE CASCADE ON DELETE RESTRICT;
 T   ALTER TABLE ONLY public.drop_packages DROP CONSTRAINT "drop_packages_User_Id_fkey";
       public          root    false    3323    221    217            +           2606    25239    hardware hardware_User_Id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.hardware
    ADD CONSTRAINT "hardware_User_Id_fkey" FOREIGN KEY ("User_Id") REFERENCES public."User"(id) ON UPDATE CASCADE ON DELETE RESTRICT;
 J   ALTER TABLE ONLY public.hardware DROP CONSTRAINT "hardware_User_Id_fkey";
       public          root    false    217    3323    239            )           2606    25179     notebooks notebooks_User_Id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.notebooks
    ADD CONSTRAINT "notebooks_User_Id_fkey" FOREIGN KEY ("User_Id") REFERENCES public."User"(id) ON UPDATE CASCADE ON DELETE RESTRICT;
 L   ALTER TABLE ONLY public.notebooks DROP CONSTRAINT "notebooks_User_Id_fkey";
       public          root    false    3323    235    217            (           2606    25107 (   product_order product_order_User_Id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.product_order
    ADD CONSTRAINT "product_order_User_Id_fkey" FOREIGN KEY ("User_Id") REFERENCES public."User"(id) ON UPDATE CASCADE ON DELETE RESTRICT;
 T   ALTER TABLE ONLY public.product_order DROP CONSTRAINT "product_order_User_Id_fkey";
       public          root    false    3323    227    217            �   !  x��X�R�F]7_q�UR)\z�^
l�k0P��!�l�m�"�=f&�PV��l���n?��d���U��/u�s��5D4-D
!R�-D�$`R8/�2cs<`7�YR�P@*2(c��}��3�s����a��#K` ״z�����8	z�R���h�M6Cg"����Et�8��d8�Z���ԛ�d6�p1���	ï3o�!	L��h���'~r���Өd���=}��O<	ŗt��qx$��sbk�,��mb�M��aK#�oс��6���� BS����\� �Xu�2���qf���������uzp&bP�ʑ1�E�)(X�* ��A�I"�ސ[��iڑYW��Ϝ�)K�<���O��pɊh�a?���`p��v�7Ɔ��1�\������Uţ&��$��q�{ȣ��s��c#x�R���z��C�3�>� ��6����B0qzvE0�ԊR��Uc*����¥đZQ���T��֋���\'�	R�`c�=_&�"��SVe#G�$���6��b�N�%�E)ʥC��`!g"�K
ؽZ�)�(PT<*�Jy@�qW=��X`\��S�������ph�
����69Zd�K)��!�b+M
���㴌r.�Jd��4y�]5�����V��X��//�^�����
�OL�Ixz�i]ݎ���L�w`jNw�=�jZ�4$��͊[jг�6 �+Ǹkc��zDZ
)ˤi���H�r��"�l��XO���`4���'"A�30��cx�3�ˌ!~7�y�1l��3��h�2�]���i��y�X_h�p ���)]�^wV"E��.�����O4�����­z�j���5oO�kh� �C��s&��"[e&�/�lxenRQ�Ujr+�Ia��V�=��yV�V��j3u"���Rv�R�7�m�s%%�#�v�/DV%M�+6�4Jq��栅�LP�j��
���pt}�#4C�W�M��?`}��o�qx��} �Y�T�-��x�;MTa�ه���.o �^��;5�$�f5�߇�����W9t]�;���rr���?G�1�P��Q�aņ��I�{,��r�~-��s6���wgu�� w��rR!���1��˰r~Y�t��6J��Ts�6����e��P��T�g]��+!:�P#�/+�B�R%��.}�9�Kq/�v��͚�C���)0-�������ԍI�Eu�n&��X3��S��5l�.a� �Ϳ����ύܺq�b����Z��vU�S���Ua�7��|��������_~��      �   �   x���?�0���StT�!w�?;9.
����R������tQ:($yw�~@��z���Jڨ��E�Qikw�27�s ��6��豩�  �����;ϗI�����v�vV���%'���u+�2��|ʊ!�J��D0D\���+�{;�X�wm'��T����O,������g��DdPdK>�1J���p�      �   d  x���=��6��S�'kx�@��H�r��^��I1;��Q�(���3��$k����Ϩ�Qh�#�W�L5 j@E��姷߿��~�����>���������//?����߾�����������]����/_�¿>��?��%�$�>B^Qn7�!J�x�h�c�D��Gy�͈���ǹ��<�Ɛd��/S�K�Ci�I.y6#��1�a^̈�:�� AS�Ռ8�G��t�^�Ɍ�x#�e�b�i�73""�R�2��&y�$!�4�a��\6�a��^�5bX��h�-SC���sk3��M��z�|/9�c@��=�E氖Q3sh^B3�9�g@�=���\`X̀��n��}r�aE����C�K��v�n�����tZ���1T�l�5�qn]����t�9��.�M��f�,�x����hU4[����<�V4�*�-tJ��yʭhU4h7�B�N�\s+�D�Z������5�����r�	;�u�P]����Ǜ�k.�5Bu�*����\�k��-��������fD�L��AT��X��8���s�.�8B4�ږ�b�#D��C�<�ƞs���qR�7�y�|wq���q��)=�k�g	]������b��<���ߒuq��Q�q���W���{��Gy��C3�5�����H7�-����N��M�8&T�s��Q�q�P����N�\r��Q�q��b�j��,��C��b�2�\�q�e�=TC��\�q�e�=t�57��'������쫸N��q2�8[h^⥖�y���,�ЊӦ}ɳ5N&G���Z�y���D��Cs*�<�� �8�,�� e��'�s�z��.y���D�l���l���ƹ��=_w�l���Ʃ��>Vc����sm��y��)D���*�s�d����s�8~c׼X�4�f>-���;��:̛��q3�Bs�&ü�ͼ7�iy'�JH%�f7�F����p#�Û��q3_CU�0̛k}7�{h=<�����x�y�������:�����mAM��S�y���*�6���̘�#����t�u03&�;�bS�ߺ��:��g�=6�sv_3c�ܳ�f�	���f����[켈��u03&�?sl��!J�q�f��h���qq��:�)�R�t顡�a�C����-6�ӷv��ȴ
�[�+�px���dZ	y�M!�q_D�5��X�KlJǿ�k_E�u�Ml9���o"Ӫ�[��C��Gq_s�.2����"�l�÷�iud�e��W�i�d;��}��Jɠ����偟�Hwr�Z2h��=����[�k��CU�+���5��&��M�b�R����]r��2heۦqWR��|��1H<]*���ZO��=m���ZS9�?S�%6�:��ʠu�M�����pee���k��
���]s��2h}e������
ˠ5��Xi7Ewr��2h�e�Xwr��2h��{l�����jˠ��Ml��{��ˠ5���,χ�i�P�p�eк�{l���NW^��\����E�0��/��_6�M�0�+0��`�cK�-�wr�
3hf[��8�8\���[C�:��j̠��Ml}x�<�pEfК�uٮs^���0��������2s�23hm溾�����A���ՙA�3��2M���Z��.���>li�Wם��Z�y��osS�p�f�Z��+��a�%�R�9\��^��B��;9\��f�ܘiZK�s�j3h��=VC��1;9\��v��n:�������p�f���&6�d'G����e�i�`�S�y���U�A�8�؊:��JΠ���غ��d��՜A�9o��]�-F'�+:��t6���4����A+:��f�e��錉����I]-�|̌�Z�=v���x'_���g�����<q�7      �   �  x���[��:E�[�8h�$?K�W���d���څ˱q���p�S��O�2����˾�{jE��B5m)#E9�JuO��*L�P�[�J�r�:�%�ae�����y�[M;R�%̡�UK/Qݮ�c�[O�x8���=�q�;��3G9�#��;#%�#�����:J^َoc79��fy��6v�:R^�Ja�X�YY�9�-�l����^���}/�lk=�!�^�#&�g��!�^�Y��>�Cv�Ķ����{�rȮ�g��w.��z9�%}M���JyFKy��!�Rb߹�MNH.��Jyf�j�Cv�$c���Z]�Jyf[^�ˁ\)G���5��ȕ��~��r�l��7��-p ��++�G9�c��T�ȑ���DE9�-e��iRt=ڣȖ��>&�dK9�c���QlKyg�9�-�o�'EQlKygIbؒ�0�Km^6�q`K�;����0�e��Y��=ʁ-#�l�_�8�e�]������S�u�r`��;�H�r��;��0��<���)�A,#���D9�#%c���kđ��J�������$eQ�xye?��k�������ap��3�K��Q�xYw��y�畣��啭����.�����P/��p�r�;m�_ѹ�JCw�9����(����K�\t��Q���2s�Cw�9��So/�gs�8gVX�D9�f��ql�u�XQ�\�mu~�]?�(�r۝3L�P^Jl�������^bp-�������cm�ռ����Y�Zn�y�S�|�V���r����K�嶝�4�aT��˵����������!��}{>k�˴�U�&��*�k��d���x\�]%�p��`@���ȒnBհ���Z�*y�Y�cw���J�q+��˵�Ur�1m�Vbr-w�<Ï�
4�/�p��I������^]�(�rW�3��s�v���z���`���Z��KS����y\�}C�pï���Z�Z�);~��V����a��%�r�P9N�y��ڣ\�-C��pk����������r@�$�
�֎8G9�y�q���XҸ3A�喞S�g��8�y�q���_JlhhL��+���[z���]����r-����}��5�喞u��z�z�k�����U��r��;,���5hk�a}n�Uk\�-C�pM�2vk���	s-����]i��$�ͣ�;,�(̵�ҳ�c�;� �rK�),��Ƶ��S���\���Z�Zn��.���k\�-=���i{F�?s��gSx�p�`m��lc��|�����5�喞w���1hph��|��LQ�喛w�&j1�͖�m<Q�w?�C�Ƶ�s
Lzk\�-1�p=ސ G��[b��񿄄�E���b�a������C�)ܶ��{�Y_K�A�w�c��������<Y��/�⊹�      �      x������ � �      �   7   x�3���t�542!N#Nϼ�����NC#M���)H҄3 1����|�=... KR�      �   ?   x�3�442!N#NC(�FpsS�2��9�JRRJR�KR9=���CR�3�b���� F"�      �     x���Ko�@E�ïp���J�ф�J}ⴵ��H7_�TF~}ۘ.�0���޳�#/E*�R@� �.L �5�&H��je㮚�&c�l6me������4�Ii젾cC}��9;|�&C���p�MY�?��E�ZKI�٦�9���j��w"���ژ6���I��f��܇�2�+@���%��O�C��T^���������SB����6󲅺O�#����Y�u�*W��A�v�p_�w?ߎ�]0X�&��eW����,��4EQ>Qz}      �      x�3�L,NAÜ)� ������� Ӳ	�      �   6  x����n[G��駘�A�U/~�y� D/Վ&��HTy��Z�l)�0�S�l�����x,۴U1��e�RkZbJ��Ƙ>�tp�y�{��]�s}����Ŋ�����ʜ*�����XSh)E�����>���p��+|}L�c���/����Wq�x��_���[B���=�C���6��!$އ�+v���TD����\Ms����6���h��8r.�W���J��Z��d�.5�$?N���'�>9�+��ܺ�ĻP�O�_�~��ǧ?���;��ӷ���Oƫ�&��L���N�mʵʡˤ�z�mT7�n�s&R�v5���*1��(E[N��6�0^=E.5F��o]%�����t>>?��rN��o5��g^3�5��L)֚�+�jkn�95}�:bj�Î�{vmqy���4�t+w��tVI�*��r��Eٿ��֋�1�㓎G=g;����^P�F�c��9�4�-���e9AK�&��r[6�j�����*k6�Ci���T�_�|�}����"9ܻr�+>����{{����8=?�o�M�bB�6�&��)���M�V�X<���t�"����c����ZsT�ZP�~�aC�qj�>���	�^9E��j(��+����b���%��b]N�%���R�As��~v�+Ym�$�q(+1��u��ƪ�[
�W-���5��*3T�eJ��JI0�z#s�%���l}!��n�-�K�ua�T��ohZ�L�n�Q[�~	� ��#�:H��4�ok슺��D��֊snZ���(ﮞ��rx�v���_O�y����y���]@5�t��3A+��EM�2���:uz��ͭcŜs@P������RZk��E^ڧ��I���m��F	כY���n"�2���S鿃�/�|wz�5��?�oIq�k���wC���LN���EPу��mG�@1�I
l��eM�P@��+�i�ఴ��$�K/���S$�8�
�9�m��כLO�����Dm��>���8���H[*9J��<S`N]-�9"��Y�Q��o�̑۔m11����D������a{ɏ�<�{=��}~���$�7����;��1;�)M�AWB�>�����;�DP��r��W���	K��nG�L������\MM|x�u�HI���U���Z�+$;��+�t*��2�
�u�ԋx�Wd������ǡ ����0��q�z��5�!�5 �������q�	i�,�z[�h>���z���mU!a�4;�@&U�4��ґ�]�N����ّ)����=|�c���8N_�����a���������r'Lo�5�ƔU�9Mw	c�',��,)��Z&٘�9oAB: ��P?�CA����jR��ΫF�=2���\��4��Y������N��ݨ���{���B4�mA^p�t��8�h�&��@����=I�+#:�yP(�~��햶�X�Z&�͹_�i}���A��؋�m1;�vwwk(���=V��blf#��YK*��ȡ��r��Pdɬ�i&�3?ѝ�D6�Z�)	)T�,���A]�.�kpo��7������_߼��}�r	1d�Y3`�!LM��:K	���bJV�YG($�N ��4�+����-_vরMz��P,@C6�_Wg����LH����0 ���󙿼��ք��(4)]5/oz�$3��t��8�&ې���a/18R��19xIl\��iS��+��Xj�����������zQ�������x���=��&4<������R�@r	��F����r!n�=̭H!g��e#(	���_��9�fG�d
V9{Hsvv85\C�}�9��^Kf�#�v�P;��$3Q�9���+�+���i�a��7Y��`t˄I��%<U�XaFXBQy.*j�^R�b�ZB1�l,`B7��8�
�O�A���L�`"��F��ǻ�O�1v�3�~��p�&ˌUX�j���zC�4߇���CزkZ����<
Nf��"��:l���l�`����f�jW{j	4����%J~)�t�y�����*o!�5�F���4l���/��5�N0J��Alt���aoaj%4;�}dbhڔ�D9Wg�~$�Yd���R��2� �ޕC>���N�:t��<��^�r��)r��8�Mr�޶��)���g9��#0�U<����4���b�ba3 �KV�}��	;��~�M��jy_��1��y��t���ڥ	�7��q�؅+X�
������c�鸥���q��#*��TH�..�C�J�Fߙ�|M��8᭼�8qH�����jwٷdI^��y��>�	i��>qē�b�x�*ƞ� ���"I<�����RO!$�#�cs��8�����oo<�Oǧ�����[���tz�n.����!�{��gGd5�~J���~R\x?{�KN"#��ё�@ȏ�"MJH�j�u.�̞�ޕ������C$�,_Џĝ�R؏�D%�d�Vq�:ڻ_��Ŕ�^2C���ev�Cހ<���� A����!ѳ\�yT�(�m�ކ�p���5!�TNtZ���6�-�*rC�v�؝��nI*K���l$�Jpd�g�m��l��cb�����w�O���}�䡒.	�����-z�Q�g�(BS[�u(j)��NcWrpd3�)�-��ss�c3z+���!�k����)���p��t�fϳ$��Q���2��5�D* �j��(di�M�4Y�-	� W&�1��۴�z��(��=U�8���܍�����)��o�|?8�0�t-�ɬA ˂��VKXd#�V2��
��c��cC�$�B"�N,p�%F��}��o���'�n������; ��������V���!������Ç��-�      �     x��V�n�6]S_Ax_C�,�^�$@<c�A1tCK��FUQ6��������n�Տ�^���W�Al��{ι�^Fzz��J^k��#�y��e�$��Nu�����>�ɇ������?�9���EV�pDXH_��E��&+�>#�'�}���d�����>�{im��zE3QT���������4]����I�j|K|�"s:����dR����BX�[�'�y0 б��lP��NÈtآ�Z�a	k��]�:�ƈT�����,eh���B�KMe��"��EFQ
*�jm�0�0P��\��+C[K:[�D���*M��~mw�
���=/ ��X�u���"�+�r�!����N�E�)Y�%ܳ�`< &�-a�D����2�(h	��2�;&�L%�hf%ʪX�\R�'e�uKu0����,��&Sʂ��Lπ����>���3Nx�[���ݨV��5j�1�y-�B�u q'X�j�w�U������p*��|k���P�~��'W	�"]I/"�Ǽ�*ot	�]��=�x�%"S�p��>q�Y^�� ��6�F#�����]Q���?�D�����D�W֎f>L�J�}rh5/�"���y��8)�E��:{���m@ۀ`�l$�'k��]@]���@B�RKC+��:k�Z�j(5�v׾�\bI* )hY�҈RA�y1ĉY�Y�G1xYÓ@A'nS0�6���$P��|�+���o5����"�2�Da�|��7$��JJm����\ )��8��F�grܡG)\�fx���j�?9mZ�CU��Y�;�Z}�<'6"o��ԹʑXM����B��0y6V,�w�2�6
N5݀��J�P(tY�琈#HD���I&^����E��Ll�z�Dk�v0���m�f�!2�Ru��`�2qp��?�dG�ˊ&HB*+�-��|�{�f�f�N���E���p���8'}�ނ
�9�Ѕ'`؉IV�9�'��bg,[	(�S��ݜi�������{&7�HDƠ��$����Cç�?�[e�R�֕~?Zq�o�1y���0Zo�`�� p6�S㧷�ځ�j���i���O��$�Ẓ ;�R� ��)m(����u�*�]x�٪���8�S7��..\����
���ʻ̩�)��Ԏ�_�B�bc����+����~|����?�o�I);H�jX�:)Ű7���A7������_�SPօ,�84t��4e���K�b �c����I�ܺE���1����GV�A1��|��]��q�����I��������'۾3�u��m,� �~�{��/=�D      �   �   x�3�HL�/IUHO�M-��LL,NI,�4�����IM����&��gs:�s�@g@Q~JiI~��_~Y~1\��X�������L�$����7��I1�f�GbQJybQ*57!�p�)&��Lp�f�s~nAiIbJ~Q*i.����� ��<      �   �  x���Mn�@���s�8��Y�KI�0!Q���L��A64��颫^ [.֙1�`�U�.�������iF}8�<A�8�|x�a8� �s5��W0�D"�L����L*p�����;����-ɤ*���
`n�G�HB�"Xa0�X�a� ����`��c���k	n»�֌�KU�$p,6pR�$�� ��s{=����O)BTaRy���|����'��\��*"O$�	��4QX���{�?1���w!?A�C�?�')���P0(02
$8eA]�]ó��qy���
�Өv9�\Rƛ<1 ����L� T��)��J&���<=�2*���ιÚ�`�o�b�����Jv`x��M	����`�^��-FЎF���LlFڡ��Ʊ��k��N=�%�0�XG6�o�*]8������P��0�h�x7� #�*��-:�u�0i����P��9"�8����b���,��B��h`�kƥ��Ϟ1��lP�g�qG$Ԓp�$6�����_](g9��Q�E����i�A+�N/�e!�za2�ݞ��n;���M�*��J$������ۧnpHF=!�(g�d��^D�%X����x�0�2z��^��([U���8�?}��y�Цi�x����O��8�+ {�      �   �  x�}�MoG�ϙ�2��<nd�b[�$���ڒ)���/W+ٷ�Xϐ������~��{<����k�����k|?Vl@��-��{�����~�����1��
uYlm��pV��������]6T��`hza�쭍Ezl��q5 'e�;��h�%S���F��H�벬D^Q%?X8��s�j�A�l>�n=��F~)�e8K�,(�YQ��KtYg���K�}�w!c;��.�*	dT�YXq��cA���?��&ƎL�Yx���	[Ubu ;����{b���U���$�`O�@gF����1+�\�'U`�W� 7�9��G��=��R�\?	u���{����
"Ԧ�p@Z;۸Y�&��)�Q5ʹ؜��^��=�����s�ż�w�U��B=�rs�"f��&s��������p�s�Ե��C��Ʈ4��z\[���Nt�ʪ�8��¥����by;l��LgtݚD�V%/��ǜ�U�é|W.���@�� .�]�2�B]��u��e!9o�p7,���m�]�Q�Ր!bsv7�L�v����6mue�����H�-l�˫a�ަ��	]����g?�$��rxZޟ�wʾ+���Yei�g�nv��b�]�Wஂ")U:��l�v}������>�NM<-������      �   +  x�՗͒�H���O�/�ŗzD��?��c/�Pݲ��:s�g����)|���[@	����9(����/��YMi���� �d��$��E�dEѐ%�.�Ɠ/h:60�0R�7�4��	�q��-��ĄqB�M���G���?~�)��������1��>@Sg,����LKHF���w�}�{�q��X��a�����A�*x[������/����nㄦ$	H!�S�ؖ?&�?%w���>s��:���&�0ϟ�(8�s��!7آA��c�&�:����� �Yp�"~��7í(b��2�ʝ��t��*سc� k�d�L�|�B#А�Qs>�Lm�Ѱ,�_����!��	z-pS_f�/�Hj~4V�j1X,>`-G�=(�A/�ԭVI����S��_|3�/a){���%OģPD ԷG'@���
�W"k�% W�ŗ��%�8��������\�jNH;��A+]��VJG�~V��7�R�I�ƚHVqZ�"�b�oЉ�M��Y�O��TNf=O
ZIA/��X;��7S�X�$!�{f�{�C���x.Y0vu܌��6�F�~�_� �,I\��R?�+˴�{���s�kP��t9�.3���!�^�`��uu�?
qR�/_X� )��3��� ��˲4���y	�0�퇶*ј��-��H�L�R���
aXN}�iX�k!>}5��x��H��H�����&`'�'K`BÀ���^<�uV�Ig%��וQGrVz�6.zӢ��.A���4��k���t�����t��qbW)���+�dԫ.]r���1��^֌n�^Ml�`M��|�G5z޺�*�E{��ǯ{��;���H�V�FEO�M�)
��(��zcu���-�T)��V�q4�;]��f���靶X�>�1�2�sR��}X_�
 V���W������ĵGå3z��i5�Y�E�M+{N�+��qc�A��s�/�/�x�j���K'���;���qօ��Qn0��|��Ȟ��<����8k��r�����F4�u�����ii      �   �   x�}ͻ� ����0
H;b������i'c0���ds��s!�@a��m�	��bL�����4�c�D�s����Vq���-�չT]����퉄�k����Ѻ$<D4ƺ�{��*i:mXH�mg�o���bG7OOP��ٌ����
!�A�=�      �   �   x�m�;�0E�:�����A�����(�22Al�"V���=ս<�g62����Y�Rj~�QUT��:U��Aը�*�:���ޜ��M5�EjW����;�~d��Ď�I���/.e��Rd� 	�ErH) E�	H��v ��ͬ�      �   �  x���KoT9���1r=�Z6!" i%!�&!1�� ���s|�ΰ�(�N��ˮ:u�ҋ����ï/_~�xx<����#��1>���{o!E؍�Y_���{�Z���]�9w��}��ߟ�]�C�/`\��6�q�AыU���7m�Ǹ�"�ԄU�q��o_�1� �L�;ɀ��Q���&�ŸH�W�5���[1�v��Ճkw��Ds�N1�S`�!�p��ͺ��7L��^W�d1/,�]̟�s������j�z�����V\��6�چ��p�*�N������Ve��l\5��yQ	[��P�5�!�z��eP!�ޘ{�p6TE�O*T,���\��pD���.#_��+��� *��g��5����CK��)N{�;��.8(�Y���zl��%�|�H�91��z���v`��ַī�89��e@�H0�mK�]��;'�L
�}M�90)H��t��0�eG��s�޵�oY�
�tl{�I5C�P��F�N8������g`C�P������z����[T��T[JdB�W�R�H��v<�^�s��L�#��)�P�c�b���� �	E��}��C�G�
�
Ϋ'w�0Q�Qm��=b��}��ŭԚ����R�}�-%�P�_��vֻ'��kf� �j;1�B�`�~�1u�v�64�i�(�6H�
j����v'�^w�d�δ����2u#��r�\}F��Ap�Jf���r�.eT�n)�o'�s��u6g�0�	�<�0���+ȄB���ϘW��)�qԬכ&Sŭ,���p-�(>�lP���	�>@�f�*�S�催���<���Q���:���"�,vvE��?pd�!����ҵ�0�õ��E=�
: O%�|��[����HoǂLX�$wF��M{v2>b�}
�l!L�@�D�}v���q��0'�x�o2�`Z�Z��5x�e���������83����������GJ5˵H#�H��;N�.OZ6���zb�Ƭ��Nbakݖ��ߞ�^���|��~Ɩ��X]�鷃�'�;�ά�.��b&���Ć��-+}?\��?9}�?�\4�\[�b.��L�N��aՐxa�?*e%iQ1�̉�0��k��z�a(�e�mo�����9�&���>���p�l���(�]��8aF&��l9�CF��,���fUt�M�6��Kub�>��r
��'�R��W�X��\�ԶgL�BxZʦz)�L��E:i6q�06�ͼ�7�һ�ˋ�⹉e-��VE�*ӌ9R��E!<F��}�u�lLX�(���I^g����������
�+�ڳ������3FI5.0��y�0JC��͛d���iU	�i���b�89^kL(S�J��a��b��e��ȉIE��<�h�3���'7W��4��0��z����oR�jH��B1�/va��&��؉a�����^]�}>=��t��:{�s����N��//w��rW0�     