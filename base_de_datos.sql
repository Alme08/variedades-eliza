PGDMP     '    9                {         
   bodegon_DB    15.3    15.3 �               0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            	           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            
           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    17008 
   bodegon_DB    DATABASE     �   CREATE DATABASE "bodegon_DB" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'English_United States.1252';
    DROP DATABASE "bodegon_DB";
                postgres    false            �            1259    17019    accounts_account    TABLE       CREATE TABLE public.accounts_account (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    first_name character varying(50) NOT NULL,
    last_name character varying(50) NOT NULL,
    username character varying(50) NOT NULL,
    email character varying(100) NOT NULL,
    phone_number character varying(50) NOT NULL,
    date_joined timestamp with time zone NOT NULL,
    last_login timestamp with time zone NOT NULL,
    is_active boolean NOT NULL,
    is_superuser boolean NOT NULL,
    is_admin boolean NOT NULL
);
 $   DROP TABLE public.accounts_account;
       public         heap    postgres    false            �            1259    17309    accounts_account_groups    TABLE     �   CREATE TABLE public.accounts_account_groups (
    id integer NOT NULL,
    account_id integer NOT NULL,
    group_id integer NOT NULL
);
 +   DROP TABLE public.accounts_account_groups;
       public         heap    postgres    false            �            1259    17308    accounts_account_groups_id_seq    SEQUENCE     �   CREATE SEQUENCE public.accounts_account_groups_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public.accounts_account_groups_id_seq;
       public          postgres    false    250                       0    0    accounts_account_groups_id_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public.accounts_account_groups_id_seq OWNED BY public.accounts_account_groups.id;
          public          postgres    false    249            �            1259    17018    accounts_account_id_seq    SEQUENCE     �   CREATE SEQUENCE public.accounts_account_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.accounts_account_id_seq;
       public          postgres    false    217                       0    0    accounts_account_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.accounts_account_id_seq OWNED BY public.accounts_account.id;
          public          postgres    false    216            �            1259    17317 !   accounts_account_user_permissions    TABLE     �   CREATE TABLE public.accounts_account_user_permissions (
    id integer NOT NULL,
    account_id integer NOT NULL,
    permission_id integer NOT NULL
);
 5   DROP TABLE public.accounts_account_user_permissions;
       public         heap    postgres    false            �            1259    17316 (   accounts_account_user_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.accounts_account_user_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ?   DROP SEQUENCE public.accounts_account_user_permissions_id_seq;
       public          postgres    false    252                       0    0 (   accounts_account_user_permissions_id_seq    SEQUENCE OWNED BY     u   ALTER SEQUENCE public.accounts_account_user_permissions_id_seq OWNED BY public.accounts_account_user_permissions.id;
          public          postgres    false    251            �            1259    17282    accounts_userprofile    TABLE     �  CREATE TABLE public.accounts_userprofile (
    id integer NOT NULL,
    address_line_1 character varying(100) NOT NULL,
    address_line_2 character varying(100) NOT NULL,
    profile_picture character varying(100) NOT NULL,
    city character varying(20) NOT NULL,
    state character varying(20) NOT NULL,
    country character varying(20) NOT NULL,
    user_id integer NOT NULL
);
 (   DROP TABLE public.accounts_userprofile;
       public         heap    postgres    false            �            1259    17281    accounts_userprofile_id_seq    SEQUENCE     �   CREATE SEQUENCE public.accounts_userprofile_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.accounts_userprofile_id_seq;
       public          postgres    false    246                       0    0    accounts_userprofile_id_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public.accounts_userprofile_id_seq OWNED BY public.accounts_userprofile.id;
          public          postgres    false    245            �            1259    17070 
   auth_group    TABLE     f   CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);
    DROP TABLE public.auth_group;
       public         heap    postgres    false            �            1259    17069    auth_group_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.auth_group_id_seq;
       public          postgres    false    225                       0    0    auth_group_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;
          public          postgres    false    224            �            1259    17079    auth_group_permissions    TABLE     �   CREATE TABLE public.auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);
 *   DROP TABLE public.auth_group_permissions;
       public         heap    postgres    false            �            1259    17078    auth_group_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_group_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.auth_group_permissions_id_seq;
       public          postgres    false    227                       0    0    auth_group_permissions_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;
          public          postgres    false    226            �            1259    17063    auth_permission    TABLE     �   CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);
 #   DROP TABLE public.auth_permission;
       public         heap    postgres    false            �            1259    17062    auth_permission_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.auth_permission_id_seq;
       public          postgres    false    223                       0    0    auth_permission_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;
          public          postgres    false    222            �            1259    17157 
   carts_cart    TABLE     �   CREATE TABLE public.carts_cart (
    id integer NOT NULL,
    cart_id character varying(250) NOT NULL,
    date_added date NOT NULL
);
    DROP TABLE public.carts_cart;
       public         heap    postgres    false            �            1259    17156    carts_cart_id_seq    SEQUENCE     �   CREATE SEQUENCE public.carts_cart_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.carts_cart_id_seq;
       public          postgres    false    234                       0    0    carts_cart_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.carts_cart_id_seq OWNED BY public.carts_cart.id;
          public          postgres    false    233            �            1259    17164    carts_cartitem    TABLE     �   CREATE TABLE public.carts_cartitem (
    id integer NOT NULL,
    quantity integer NOT NULL,
    is_active boolean NOT NULL,
    cart_id integer,
    product_id integer NOT NULL,
    user_id integer
);
 "   DROP TABLE public.carts_cartitem;
       public         heap    postgres    false            �            1259    17163    carts_cartitem_id_seq    SEQUENCE     �   CREATE SEQUENCE public.carts_cartitem_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.carts_cartitem_id_seq;
       public          postgres    false    236                       0    0    carts_cartitem_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.carts_cartitem_id_seq OWNED BY public.carts_cartitem.id;
          public          postgres    false    235            �            1259    17112    category_category    TABLE     �   CREATE TABLE public.category_category (
    id integer NOT NULL,
    category_name character varying(50) NOT NULL,
    slug character varying(100) NOT NULL,
    description text NOT NULL,
    cat_image character varying(100) NOT NULL
);
 %   DROP TABLE public.category_category;
       public         heap    postgres    false            �            1259    17111    category_category_id_seq    SEQUENCE     �   CREATE SEQUENCE public.category_category_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.category_category_id_seq;
       public          postgres    false    229                       0    0    category_category_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.category_category_id_seq OWNED BY public.category_category.id;
          public          postgres    false    228            �            1259    17041    django_admin_log    TABLE     �  CREATE TABLE public.django_admin_log (
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
       public         heap    postgres    false            �            1259    17040    django_admin_log_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.django_admin_log_id_seq;
       public          postgres    false    221                       0    0    django_admin_log_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;
          public          postgres    false    220            �            1259    17032    django_content_type    TABLE     �   CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);
 '   DROP TABLE public.django_content_type;
       public         heap    postgres    false            �            1259    17031    django_content_type_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.django_content_type_id_seq;
       public          postgres    false    219                       0    0    django_content_type_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;
          public          postgres    false    218            �            1259    17010    django_migrations    TABLE     �   CREATE TABLE public.django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);
 %   DROP TABLE public.django_migrations;
       public         heap    postgres    false            �            1259    17009    django_migrations_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.django_migrations_id_seq;
       public          postgres    false    215                       0    0    django_migrations_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;
          public          postgres    false    214            �            1259    17126    django_session    TABLE     �   CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);
 "   DROP TABLE public.django_session;
       public         heap    postgres    false            �            1259    17195    orders_order    TABLE     �  CREATE TABLE public.orders_order (
    id integer NOT NULL,
    order_number character varying(20) NOT NULL,
    first_name character varying(50) NOT NULL,
    last_name character varying(50) NOT NULL,
    phone character varying(15) NOT NULL,
    email character varying(50) NOT NULL,
    address_line_1 character varying(50) NOT NULL,
    address_line_2 character varying(50) NOT NULL,
    country character varying(50) NOT NULL,
    state character varying(50) NOT NULL,
    city character varying(50) NOT NULL,
    order_note character varying(100) NOT NULL,
    order_total double precision NOT NULL,
    tax double precision NOT NULL,
    status character varying(10) NOT NULL,
    ip character varying(20) NOT NULL,
    is_ordered boolean NOT NULL,
    created_at timestamp with time zone NOT NULL,
    updated_at timestamp with time zone NOT NULL,
    payment_id integer,
    user_id integer
);
     DROP TABLE public.orders_order;
       public         heap    postgres    false            �            1259    17194    orders_order_id_seq    SEQUENCE     �   CREATE SEQUENCE public.orders_order_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.orders_order_id_seq;
       public          postgres    false    238                       0    0    orders_order_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.orders_order_id_seq OWNED BY public.orders_order.id;
          public          postgres    false    237            �            1259    17211    orders_orderproduct    TABLE     �  CREATE TABLE public.orders_orderproduct (
    id integer NOT NULL,
    quantity integer NOT NULL,
    product_price double precision NOT NULL,
    ordered boolean NOT NULL,
    created_at timestamp with time zone NOT NULL,
    updated_at timestamp with time zone NOT NULL,
    order_id integer NOT NULL,
    payment_id integer,
    product_id integer NOT NULL,
    user_id integer NOT NULL
);
 '   DROP TABLE public.orders_orderproduct;
       public         heap    postgres    false            �            1259    17210    orders_orderproduct_id_seq    SEQUENCE     �   CREATE SEQUENCE public.orders_orderproduct_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.orders_orderproduct_id_seq;
       public          postgres    false    242                       0    0    orders_orderproduct_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.orders_orderproduct_id_seq OWNED BY public.orders_orderproduct.id;
          public          postgres    false    241            �            1259    17204    orders_payment    TABLE     Q  CREATE TABLE public.orders_payment (
    id integer NOT NULL,
    payment_id character varying(100) NOT NULL,
    payment_method character varying(100) NOT NULL,
    amount_paid character varying(100) NOT NULL,
    status character varying(100) NOT NULL,
    created_at timestamp with time zone NOT NULL,
    user_id integer NOT NULL
);
 "   DROP TABLE public.orders_payment;
       public         heap    postgres    false            �            1259    17203    orders_payment_id_seq    SEQUENCE     �   CREATE SEQUENCE public.orders_payment_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.orders_payment_id_seq;
       public          postgres    false    240                       0    0    orders_payment_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.orders_payment_id_seq OWNED BY public.orders_payment.id;
          public          postgres    false    239            �            1259    17136    store_product    TABLE     �  CREATE TABLE public.store_product (
    id integer NOT NULL,
    product_name character varying(200) NOT NULL,
    slug character varying(200) NOT NULL,
    description text NOT NULL,
    price integer NOT NULL,
    images character varying(100) NOT NULL,
    stock integer NOT NULL,
    is_available boolean NOT NULL,
    created_date timestamp with time zone NOT NULL,
    modified_date timestamp with time zone NOT NULL,
    category_id integer NOT NULL
);
 !   DROP TABLE public.store_product;
       public         heap    postgres    false            �            1259    17135    store_product_id_seq    SEQUENCE     �   CREATE SEQUENCE public.store_product_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.store_product_id_seq;
       public          postgres    false    232                       0    0    store_product_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.store_product_id_seq OWNED BY public.store_product.id;
          public          postgres    false    231            �            1259    17296    store_productgallery    TABLE     �   CREATE TABLE public.store_productgallery (
    id integer NOT NULL,
    image character varying(255) NOT NULL,
    product_id integer NOT NULL
);
 (   DROP TABLE public.store_productgallery;
       public         heap    postgres    false            �            1259    17295    store_productgallery_id_seq    SEQUENCE     �   CREATE SEQUENCE public.store_productgallery_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.store_productgallery_id_seq;
       public          postgres    false    248                       0    0    store_productgallery_id_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public.store_productgallery_id_seq OWNED BY public.store_productgallery.id;
          public          postgres    false    247            �            1259    17261    store_reviewrating    TABLE     �  CREATE TABLE public.store_reviewrating (
    id integer NOT NULL,
    subject character varying(100) NOT NULL,
    review text NOT NULL,
    rating double precision NOT NULL,
    ip character varying(20) NOT NULL,
    status boolean NOT NULL,
    created_at timestamp with time zone NOT NULL,
    updated_at timestamp with time zone NOT NULL,
    product_id integer NOT NULL,
    user_id integer
);
 &   DROP TABLE public.store_reviewrating;
       public         heap    postgres    false            �            1259    17260    store_reviewrating_id_seq    SEQUENCE     �   CREATE SEQUENCE public.store_reviewrating_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.store_reviewrating_id_seq;
       public          postgres    false    244                       0    0    store_reviewrating_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.store_reviewrating_id_seq OWNED BY public.store_reviewrating.id;
          public          postgres    false    243            �           2604    17022    accounts_account id    DEFAULT     z   ALTER TABLE ONLY public.accounts_account ALTER COLUMN id SET DEFAULT nextval('public.accounts_account_id_seq'::regclass);
 B   ALTER TABLE public.accounts_account ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    217    216    217            �           2604    17312    accounts_account_groups id    DEFAULT     �   ALTER TABLE ONLY public.accounts_account_groups ALTER COLUMN id SET DEFAULT nextval('public.accounts_account_groups_id_seq'::regclass);
 I   ALTER TABLE public.accounts_account_groups ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    249    250    250            �           2604    17320 $   accounts_account_user_permissions id    DEFAULT     �   ALTER TABLE ONLY public.accounts_account_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.accounts_account_user_permissions_id_seq'::regclass);
 S   ALTER TABLE public.accounts_account_user_permissions ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    251    252    252            �           2604    17285    accounts_userprofile id    DEFAULT     �   ALTER TABLE ONLY public.accounts_userprofile ALTER COLUMN id SET DEFAULT nextval('public.accounts_userprofile_id_seq'::regclass);
 F   ALTER TABLE public.accounts_userprofile ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    246    245    246            �           2604    17073    auth_group id    DEFAULT     n   ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);
 <   ALTER TABLE public.auth_group ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    224    225    225            �           2604    17082    auth_group_permissions id    DEFAULT     �   ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);
 H   ALTER TABLE public.auth_group_permissions ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    226    227    227            �           2604    17066    auth_permission id    DEFAULT     x   ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);
 A   ALTER TABLE public.auth_permission ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    223    222    223            �           2604    17160    carts_cart id    DEFAULT     n   ALTER TABLE ONLY public.carts_cart ALTER COLUMN id SET DEFAULT nextval('public.carts_cart_id_seq'::regclass);
 <   ALTER TABLE public.carts_cart ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    233    234    234            �           2604    17167    carts_cartitem id    DEFAULT     v   ALTER TABLE ONLY public.carts_cartitem ALTER COLUMN id SET DEFAULT nextval('public.carts_cartitem_id_seq'::regclass);
 @   ALTER TABLE public.carts_cartitem ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    236    235    236            �           2604    17115    category_category id    DEFAULT     |   ALTER TABLE ONLY public.category_category ALTER COLUMN id SET DEFAULT nextval('public.category_category_id_seq'::regclass);
 C   ALTER TABLE public.category_category ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    228    229    229            �           2604    17044    django_admin_log id    DEFAULT     z   ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);
 B   ALTER TABLE public.django_admin_log ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    220    221    221            �           2604    17035    django_content_type id    DEFAULT     �   ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);
 E   ALTER TABLE public.django_content_type ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    218    219    219            �           2604    17013    django_migrations id    DEFAULT     |   ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);
 C   ALTER TABLE public.django_migrations ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    215    214    215            �           2604    17198    orders_order id    DEFAULT     r   ALTER TABLE ONLY public.orders_order ALTER COLUMN id SET DEFAULT nextval('public.orders_order_id_seq'::regclass);
 >   ALTER TABLE public.orders_order ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    238    237    238            �           2604    17214    orders_orderproduct id    DEFAULT     �   ALTER TABLE ONLY public.orders_orderproduct ALTER COLUMN id SET DEFAULT nextval('public.orders_orderproduct_id_seq'::regclass);
 E   ALTER TABLE public.orders_orderproduct ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    241    242    242            �           2604    17207    orders_payment id    DEFAULT     v   ALTER TABLE ONLY public.orders_payment ALTER COLUMN id SET DEFAULT nextval('public.orders_payment_id_seq'::regclass);
 @   ALTER TABLE public.orders_payment ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    239    240    240            �           2604    17139    store_product id    DEFAULT     t   ALTER TABLE ONLY public.store_product ALTER COLUMN id SET DEFAULT nextval('public.store_product_id_seq'::regclass);
 ?   ALTER TABLE public.store_product ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    231    232    232            �           2604    17299    store_productgallery id    DEFAULT     �   ALTER TABLE ONLY public.store_productgallery ALTER COLUMN id SET DEFAULT nextval('public.store_productgallery_id_seq'::regclass);
 F   ALTER TABLE public.store_productgallery ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    247    248    248            �           2604    17264    store_reviewrating id    DEFAULT     ~   ALTER TABLE ONLY public.store_reviewrating ALTER COLUMN id SET DEFAULT nextval('public.store_reviewrating_id_seq'::regclass);
 D   ALTER TABLE public.store_reviewrating ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    243    244    244            �          0    17019    accounts_account 
   TABLE DATA           �   COPY public.accounts_account (id, password, first_name, last_name, username, email, phone_number, date_joined, last_login, is_active, is_superuser, is_admin) FROM stdin;
    public          postgres    false    217   s#                0    17309    accounts_account_groups 
   TABLE DATA           K   COPY public.accounts_account_groups (id, account_id, group_id) FROM stdin;
    public          postgres    false    250   U&                0    17317 !   accounts_account_user_permissions 
   TABLE DATA           Z   COPY public.accounts_account_user_permissions (id, account_id, permission_id) FROM stdin;
    public          postgres    false    252   y&      �          0    17282    accounts_userprofile 
   TABLE DATA           �   COPY public.accounts_userprofile (id, address_line_1, address_line_2, profile_picture, city, state, country, user_id) FROM stdin;
    public          postgres    false    246   �&      �          0    17070 
   auth_group 
   TABLE DATA           .   COPY public.auth_group (id, name) FROM stdin;
    public          postgres    false    225   N'      �          0    17079    auth_group_permissions 
   TABLE DATA           M   COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
    public          postgres    false    227   s'      �          0    17063    auth_permission 
   TABLE DATA           N   COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
    public          postgres    false    223   �'      �          0    17157 
   carts_cart 
   TABLE DATA           =   COPY public.carts_cart (id, cart_id, date_added) FROM stdin;
    public          postgres    false    234   M*      �          0    17164    carts_cartitem 
   TABLE DATA           _   COPY public.carts_cartitem (id, quantity, is_active, cart_id, product_id, user_id) FROM stdin;
    public          postgres    false    236   �0      �          0    17112    category_category 
   TABLE DATA           \   COPY public.category_category (id, category_name, slug, description, cat_image) FROM stdin;
    public          postgres    false    229   #1      �          0    17041    django_admin_log 
   TABLE DATA           �   COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
    public          postgres    false    221   �1      �          0    17032    django_content_type 
   TABLE DATA           C   COPY public.django_content_type (id, app_label, model) FROM stdin;
    public          postgres    false    219   �;      �          0    17010    django_migrations 
   TABLE DATA           C   COPY public.django_migrations (id, app, name, applied) FROM stdin;
    public          postgres    false    215   ]<      �          0    17126    django_session 
   TABLE DATA           P   COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
    public          postgres    false    230   v?      �          0    17195    orders_order 
   TABLE DATA           �   COPY public.orders_order (id, order_number, first_name, last_name, phone, email, address_line_1, address_line_2, country, state, city, order_note, order_total, tax, status, ip, is_ordered, created_at, updated_at, payment_id, user_id) FROM stdin;
    public          postgres    false    238   �J      �          0    17211    orders_orderproduct 
   TABLE DATA           �   COPY public.orders_orderproduct (id, quantity, product_price, ordered, created_at, updated_at, order_id, payment_id, product_id, user_id) FROM stdin;
    public          postgres    false    242   �O      �          0    17204    orders_payment 
   TABLE DATA           r   COPY public.orders_payment (id, payment_id, payment_method, amount_paid, status, created_at, user_id) FROM stdin;
    public          postgres    false    240   Q      �          0    17136    store_product 
   TABLE DATA           �   COPY public.store_product (id, product_name, slug, description, price, images, stock, is_available, created_date, modified_date, category_id) FROM stdin;
    public          postgres    false    232   �R                0    17296    store_productgallery 
   TABLE DATA           E   COPY public.store_productgallery (id, image, product_id) FROM stdin;
    public          postgres    false    248   �T      �          0    17261    store_reviewrating 
   TABLE DATA           �   COPY public.store_reviewrating (id, subject, review, rating, ip, status, created_at, updated_at, product_id, user_id) FROM stdin;
    public          postgres    false    244   %U                 0    0    accounts_account_groups_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.accounts_account_groups_id_seq', 5, true);
          public          postgres    false    249                        0    0    accounts_account_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.accounts_account_id_seq', 29, true);
          public          postgres    false    216            !           0    0 (   accounts_account_user_permissions_id_seq    SEQUENCE SET     V   SELECT pg_catalog.setval('public.accounts_account_user_permissions_id_seq', 1, true);
          public          postgres    false    251            "           0    0    accounts_userprofile_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.accounts_userprofile_id_seq', 5, true);
          public          postgres    false    245            #           0    0    auth_group_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.auth_group_id_seq', 3, true);
          public          postgres    false    224            $           0    0    auth_group_permissions_id_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 149, true);
          public          postgres    false    226            %           0    0    auth_permission_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.auth_permission_id_seq', 64, true);
          public          postgres    false    222            &           0    0    carts_cart_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.carts_cart_id_seq', 65, true);
          public          postgres    false    233            '           0    0    carts_cartitem_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.carts_cartitem_id_seq', 94, true);
          public          postgres    false    235            (           0    0    category_category_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.category_category_id_seq', 12, true);
          public          postgres    false    228            )           0    0    django_admin_log_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.django_admin_log_id_seq', 143, true);
          public          postgres    false    220            *           0    0    django_content_type_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.django_content_type_id_seq', 16, true);
          public          postgres    false    218            +           0    0    django_migrations_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.django_migrations_id_seq', 36, true);
          public          postgres    false    214            ,           0    0    orders_order_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.orders_order_id_seq', 35, true);
          public          postgres    false    237            -           0    0    orders_orderproduct_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.orders_orderproduct_id_seq', 16, true);
          public          postgres    false    241            .           0    0    orders_payment_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.orders_payment_id_seq', 14, true);
          public          postgres    false    239            /           0    0    store_product_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.store_product_id_seq', 7, true);
          public          postgres    false    231            0           0    0    store_productgallery_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.store_productgallery_id_seq', 2, true);
          public          postgres    false    247            1           0    0    store_reviewrating_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.store_reviewrating_id_seq', 2, true);
          public          postgres    false    243            �           2606    17028 +   accounts_account accounts_account_email_key 
   CONSTRAINT     g   ALTER TABLE ONLY public.accounts_account
    ADD CONSTRAINT accounts_account_email_key UNIQUE (email);
 U   ALTER TABLE ONLY public.accounts_account DROP CONSTRAINT accounts_account_email_key;
       public            postgres    false    217            /           2606    17324 Q   accounts_account_groups accounts_account_groups_account_id_group_id_f64165b0_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.accounts_account_groups
    ADD CONSTRAINT accounts_account_groups_account_id_group_id_f64165b0_uniq UNIQUE (account_id, group_id);
 {   ALTER TABLE ONLY public.accounts_account_groups DROP CONSTRAINT accounts_account_groups_account_id_group_id_f64165b0_uniq;
       public            postgres    false    250    250            2           2606    17314 4   accounts_account_groups accounts_account_groups_pkey 
   CONSTRAINT     r   ALTER TABLE ONLY public.accounts_account_groups
    ADD CONSTRAINT accounts_account_groups_pkey PRIMARY KEY (id);
 ^   ALTER TABLE ONLY public.accounts_account_groups DROP CONSTRAINT accounts_account_groups_pkey;
       public            postgres    false    250            �           2606    17024 &   accounts_account accounts_account_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.accounts_account
    ADD CONSTRAINT accounts_account_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.accounts_account DROP CONSTRAINT accounts_account_pkey;
       public            postgres    false    217            4           2606    17338 a   accounts_account_user_permissions accounts_account_user_pe_account_id_permission_id_9af93c14_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.accounts_account_user_permissions
    ADD CONSTRAINT accounts_account_user_pe_account_id_permission_id_9af93c14_uniq UNIQUE (account_id, permission_id);
 �   ALTER TABLE ONLY public.accounts_account_user_permissions DROP CONSTRAINT accounts_account_user_pe_account_id_permission_id_9af93c14_uniq;
       public            postgres    false    252    252            8           2606    17322 H   accounts_account_user_permissions accounts_account_user_permissions_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.accounts_account_user_permissions
    ADD CONSTRAINT accounts_account_user_permissions_pkey PRIMARY KEY (id);
 r   ALTER TABLE ONLY public.accounts_account_user_permissions DROP CONSTRAINT accounts_account_user_permissions_pkey;
       public            postgres    false    252            �           2606    17026 .   accounts_account accounts_account_username_key 
   CONSTRAINT     m   ALTER TABLE ONLY public.accounts_account
    ADD CONSTRAINT accounts_account_username_key UNIQUE (username);
 X   ALTER TABLE ONLY public.accounts_account DROP CONSTRAINT accounts_account_username_key;
       public            postgres    false    217            '           2606    17287 .   accounts_userprofile accounts_userprofile_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY public.accounts_userprofile
    ADD CONSTRAINT accounts_userprofile_pkey PRIMARY KEY (id);
 X   ALTER TABLE ONLY public.accounts_userprofile DROP CONSTRAINT accounts_userprofile_pkey;
       public            postgres    false    246            )           2606    17289 5   accounts_userprofile accounts_userprofile_user_id_key 
   CONSTRAINT     s   ALTER TABLE ONLY public.accounts_userprofile
    ADD CONSTRAINT accounts_userprofile_user_id_key UNIQUE (user_id);
 _   ALTER TABLE ONLY public.accounts_userprofile DROP CONSTRAINT accounts_userprofile_user_id_key;
       public            postgres    false    246            �           2606    17109    auth_group auth_group_name_key 
   CONSTRAINT     Y   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);
 H   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_name_key;
       public            postgres    false    225            �           2606    17095 R   auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);
 |   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq;
       public            postgres    false    227    227            �           2606    17084 2   auth_group_permissions auth_group_permissions_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_pkey;
       public            postgres    false    227            �           2606    17075    auth_group auth_group_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_pkey;
       public            postgres    false    225            �           2606    17086 F   auth_permission auth_permission_content_type_id_codename_01ab375a_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);
 p   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq;
       public            postgres    false    223    223            �           2606    17068 $   auth_permission auth_permission_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_pkey;
       public            postgres    false    223                       2606    17162    carts_cart carts_cart_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.carts_cart
    ADD CONSTRAINT carts_cart_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.carts_cart DROP CONSTRAINT carts_cart_pkey;
       public            postgres    false    234                       2606    17169 "   carts_cartitem carts_cartitem_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.carts_cartitem
    ADD CONSTRAINT carts_cartitem_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.carts_cartitem DROP CONSTRAINT carts_cartitem_pkey;
       public            postgres    false    236            �           2606    17121 5   category_category category_category_category_name_key 
   CONSTRAINT     y   ALTER TABLE ONLY public.category_category
    ADD CONSTRAINT category_category_category_name_key UNIQUE (category_name);
 _   ALTER TABLE ONLY public.category_category DROP CONSTRAINT category_category_category_name_key;
       public            postgres    false    229            �           2606    17119 (   category_category category_category_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.category_category
    ADD CONSTRAINT category_category_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.category_category DROP CONSTRAINT category_category_pkey;
       public            postgres    false    229                        2606    17123 ,   category_category category_category_slug_key 
   CONSTRAINT     g   ALTER TABLE ONLY public.category_category
    ADD CONSTRAINT category_category_slug_key UNIQUE (slug);
 V   ALTER TABLE ONLY public.category_category DROP CONSTRAINT category_category_slug_key;
       public            postgres    false    229            �           2606    17049 &   django_admin_log django_admin_log_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_pkey;
       public            postgres    false    221            �           2606    17039 E   django_content_type django_content_type_app_label_model_76bd3d3b_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);
 o   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq;
       public            postgres    false    219    219            �           2606    17037 ,   django_content_type django_content_type_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_pkey;
       public            postgres    false    219            �           2606    17017 (   django_migrations django_migrations_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.django_migrations DROP CONSTRAINT django_migrations_pkey;
       public            postgres    false    215                       2606    17132 "   django_session django_session_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);
 L   ALTER TABLE ONLY public.django_session DROP CONSTRAINT django_session_pkey;
       public            postgres    false    230                       2606    17202    orders_order orders_order_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.orders_order
    ADD CONSTRAINT orders_order_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.orders_order DROP CONSTRAINT orders_order_pkey;
       public            postgres    false    238                       2606    17216 ,   orders_orderproduct orders_orderproduct_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.orders_orderproduct
    ADD CONSTRAINT orders_orderproduct_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.orders_orderproduct DROP CONSTRAINT orders_orderproduct_pkey;
       public            postgres    false    242                       2606    17209 "   orders_payment orders_payment_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.orders_payment
    ADD CONSTRAINT orders_payment_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.orders_payment DROP CONSTRAINT orders_payment_pkey;
       public            postgres    false    240                       2606    17143     store_product store_product_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.store_product
    ADD CONSTRAINT store_product_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.store_product DROP CONSTRAINT store_product_pkey;
       public            postgres    false    232            
           2606    17145 ,   store_product store_product_product_name_key 
   CONSTRAINT     o   ALTER TABLE ONLY public.store_product
    ADD CONSTRAINT store_product_product_name_key UNIQUE (product_name);
 V   ALTER TABLE ONLY public.store_product DROP CONSTRAINT store_product_product_name_key;
       public            postgres    false    232                       2606    17147 $   store_product store_product_slug_key 
   CONSTRAINT     _   ALTER TABLE ONLY public.store_product
    ADD CONSTRAINT store_product_slug_key UNIQUE (slug);
 N   ALTER TABLE ONLY public.store_product DROP CONSTRAINT store_product_slug_key;
       public            postgres    false    232            +           2606    17301 .   store_productgallery store_productgallery_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY public.store_productgallery
    ADD CONSTRAINT store_productgallery_pkey PRIMARY KEY (id);
 X   ALTER TABLE ONLY public.store_productgallery DROP CONSTRAINT store_productgallery_pkey;
       public            postgres    false    248            #           2606    17268 *   store_reviewrating store_reviewrating_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.store_reviewrating
    ADD CONSTRAINT store_reviewrating_pkey PRIMARY KEY (id);
 T   ALTER TABLE ONLY public.store_reviewrating DROP CONSTRAINT store_reviewrating_pkey;
       public            postgres    false    244            �           1259    17030 $   accounts_account_email_348850e2_like    INDEX     v   CREATE INDEX accounts_account_email_348850e2_like ON public.accounts_account USING btree (email varchar_pattern_ops);
 8   DROP INDEX public.accounts_account_email_348850e2_like;
       public            postgres    false    217            -           1259    17335 +   accounts_account_groups_account_id_52f14852    INDEX     u   CREATE INDEX accounts_account_groups_account_id_52f14852 ON public.accounts_account_groups USING btree (account_id);
 ?   DROP INDEX public.accounts_account_groups_account_id_52f14852;
       public            postgres    false    250            0           1259    17336 )   accounts_account_groups_group_id_7c6a6bd1    INDEX     q   CREATE INDEX accounts_account_groups_group_id_7c6a6bd1 ON public.accounts_account_groups USING btree (group_id);
 =   DROP INDEX public.accounts_account_groups_group_id_7c6a6bd1;
       public            postgres    false    250            5           1259    17349 5   accounts_account_user_permissions_account_id_816f9bde    INDEX     �   CREATE INDEX accounts_account_user_permissions_account_id_816f9bde ON public.accounts_account_user_permissions USING btree (account_id);
 I   DROP INDEX public.accounts_account_user_permissions_account_id_816f9bde;
       public            postgres    false    252            6           1259    17350 8   accounts_account_user_permissions_permission_id_24620205    INDEX     �   CREATE INDEX accounts_account_user_permissions_permission_id_24620205 ON public.accounts_account_user_permissions USING btree (permission_id);
 L   DROP INDEX public.accounts_account_user_permissions_permission_id_24620205;
       public            postgres    false    252            �           1259    17029 '   accounts_account_username_b5f69a28_like    INDEX     |   CREATE INDEX accounts_account_username_b5f69a28_like ON public.accounts_account USING btree (username varchar_pattern_ops);
 ;   DROP INDEX public.accounts_account_username_b5f69a28_like;
       public            postgres    false    217            �           1259    17110    auth_group_name_a6ea08ec_like    INDEX     h   CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);
 1   DROP INDEX public.auth_group_name_a6ea08ec_like;
       public            postgres    false    225            �           1259    17106 (   auth_group_permissions_group_id_b120cbf9    INDEX     o   CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);
 <   DROP INDEX public.auth_group_permissions_group_id_b120cbf9;
       public            postgres    false    227            �           1259    17107 -   auth_group_permissions_permission_id_84c5c92e    INDEX     y   CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);
 A   DROP INDEX public.auth_group_permissions_permission_id_84c5c92e;
       public            postgres    false    227            �           1259    17092 (   auth_permission_content_type_id_2f476e4b    INDEX     o   CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);
 <   DROP INDEX public.auth_permission_content_type_id_2f476e4b;
       public            postgres    false    223                       1259    17180    carts_cartitem_cart_id_9cb0a756    INDEX     ]   CREATE INDEX carts_cartitem_cart_id_9cb0a756 ON public.carts_cartitem USING btree (cart_id);
 3   DROP INDEX public.carts_cartitem_cart_id_9cb0a756;
       public            postgres    false    236                       1259    17181 "   carts_cartitem_product_id_acd010e4    INDEX     c   CREATE INDEX carts_cartitem_product_id_acd010e4 ON public.carts_cartitem USING btree (product_id);
 6   DROP INDEX public.carts_cartitem_product_id_acd010e4;
       public            postgres    false    236                       1259    17192    carts_cartitem_user_id_4d21e0d9    INDEX     ]   CREATE INDEX carts_cartitem_user_id_4d21e0d9 ON public.carts_cartitem USING btree (user_id);
 3   DROP INDEX public.carts_cartitem_user_id_4d21e0d9;
       public            postgres    false    236            �           1259    17124 -   category_category_category_name_1aa3ee61_like    INDEX     �   CREATE INDEX category_category_category_name_1aa3ee61_like ON public.category_category USING btree (category_name varchar_pattern_ops);
 A   DROP INDEX public.category_category_category_name_1aa3ee61_like;
       public            postgres    false    229            �           1259    17125 $   category_category_slug_4f83d5f6_like    INDEX     v   CREATE INDEX category_category_slug_4f83d5f6_like ON public.category_category USING btree (slug varchar_pattern_ops);
 8   DROP INDEX public.category_category_slug_4f83d5f6_like;
       public            postgres    false    229            �           1259    17060 )   django_admin_log_content_type_id_c4bce8eb    INDEX     q   CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);
 =   DROP INDEX public.django_admin_log_content_type_id_c4bce8eb;
       public            postgres    false    221            �           1259    17061 !   django_admin_log_user_id_c564eba6    INDEX     a   CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);
 5   DROP INDEX public.django_admin_log_user_id_c564eba6;
       public            postgres    false    221                       1259    17134 #   django_session_expire_date_a5c62663    INDEX     e   CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);
 7   DROP INDEX public.django_session_expire_date_a5c62663;
       public            postgres    false    230                       1259    17133 (   django_session_session_key_c0390e0f_like    INDEX     ~   CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);
 <   DROP INDEX public.django_session_session_key_c0390e0f_like;
       public            postgres    false    230                       1259    17257     orders_order_payment_id_46928ccc    INDEX     _   CREATE INDEX orders_order_payment_id_46928ccc ON public.orders_order USING btree (payment_id);
 4   DROP INDEX public.orders_order_payment_id_46928ccc;
       public            postgres    false    238                       1259    17258    orders_order_user_id_e9b59eb1    INDEX     Y   CREATE INDEX orders_order_user_id_e9b59eb1 ON public.orders_order USING btree (user_id);
 1   DROP INDEX public.orders_order_user_id_e9b59eb1;
       public            postgres    false    238                       1259    17253 %   orders_orderproduct_order_id_5022a3e2    INDEX     i   CREATE INDEX orders_orderproduct_order_id_5022a3e2 ON public.orders_orderproduct USING btree (order_id);
 9   DROP INDEX public.orders_orderproduct_order_id_5022a3e2;
       public            postgres    false    242                       1259    17254 '   orders_orderproduct_payment_id_492ed997    INDEX     m   CREATE INDEX orders_orderproduct_payment_id_492ed997 ON public.orders_orderproduct USING btree (payment_id);
 ;   DROP INDEX public.orders_orderproduct_payment_id_492ed997;
       public            postgres    false    242                        1259    17255 '   orders_orderproduct_product_id_4d6ac024    INDEX     m   CREATE INDEX orders_orderproduct_product_id_4d6ac024 ON public.orders_orderproduct USING btree (product_id);
 ;   DROP INDEX public.orders_orderproduct_product_id_4d6ac024;
       public            postgres    false    242            !           1259    17256 $   orders_orderproduct_user_id_1e7a7ab7    INDEX     g   CREATE INDEX orders_orderproduct_user_id_1e7a7ab7 ON public.orders_orderproduct USING btree (user_id);
 8   DROP INDEX public.orders_orderproduct_user_id_1e7a7ab7;
       public            postgres    false    242                       1259    17232    orders_payment_user_id_cfa9f321    INDEX     ]   CREATE INDEX orders_payment_user_id_cfa9f321 ON public.orders_payment USING btree (user_id);
 3   DROP INDEX public.orders_payment_user_id_cfa9f321;
       public            postgres    false    240                       1259    17155 "   store_product_category_id_574bae65    INDEX     c   CREATE INDEX store_product_category_id_574bae65 ON public.store_product USING btree (category_id);
 6   DROP INDEX public.store_product_category_id_574bae65;
       public            postgres    false    232                       1259    17153 (   store_product_product_name_9d4b879d_like    INDEX     ~   CREATE INDEX store_product_product_name_9d4b879d_like ON public.store_product USING btree (product_name varchar_pattern_ops);
 <   DROP INDEX public.store_product_product_name_9d4b879d_like;
       public            postgres    false    232                       1259    17154     store_product_slug_6de8ee4b_like    INDEX     n   CREATE INDEX store_product_slug_6de8ee4b_like ON public.store_product USING btree (slug varchar_pattern_ops);
 4   DROP INDEX public.store_product_slug_6de8ee4b_like;
       public            postgres    false    232            ,           1259    17307 (   store_productgallery_product_id_f2821a49    INDEX     o   CREATE INDEX store_productgallery_product_id_f2821a49 ON public.store_productgallery USING btree (product_id);
 <   DROP INDEX public.store_productgallery_product_id_f2821a49;
       public            postgres    false    248            $           1259    17279 &   store_reviewrating_product_id_2e1974d6    INDEX     k   CREATE INDEX store_reviewrating_product_id_2e1974d6 ON public.store_reviewrating USING btree (product_id);
 :   DROP INDEX public.store_reviewrating_product_id_2e1974d6;
       public            postgres    false    244            %           1259    17280 #   store_reviewrating_user_id_da0ed849    INDEX     e   CREATE INDEX store_reviewrating_user_id_da0ed849 ON public.store_reviewrating USING btree (user_id);
 7   DROP INDEX public.store_reviewrating_user_id_da0ed849;
       public            postgres    false    244            M           2606    17325 M   accounts_account_groups accounts_account_gro_account_id_52f14852_fk_accounts_    FK CONSTRAINT     �   ALTER TABLE ONLY public.accounts_account_groups
    ADD CONSTRAINT accounts_account_gro_account_id_52f14852_fk_accounts_ FOREIGN KEY (account_id) REFERENCES public.accounts_account(id) DEFERRABLE INITIALLY DEFERRED;
 w   ALTER TABLE ONLY public.accounts_account_groups DROP CONSTRAINT accounts_account_gro_account_id_52f14852_fk_accounts_;
       public          postgres    false    250    217    3293            N           2606    17330 R   accounts_account_groups accounts_account_groups_group_id_7c6a6bd1_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.accounts_account_groups
    ADD CONSTRAINT accounts_account_groups_group_id_7c6a6bd1_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 |   ALTER TABLE ONLY public.accounts_account_groups DROP CONSTRAINT accounts_account_groups_group_id_7c6a6bd1_fk_auth_group_id;
       public          postgres    false    250    225    3314            O           2606    17339 W   accounts_account_user_permissions accounts_account_use_account_id_816f9bde_fk_accounts_    FK CONSTRAINT     �   ALTER TABLE ONLY public.accounts_account_user_permissions
    ADD CONSTRAINT accounts_account_use_account_id_816f9bde_fk_accounts_ FOREIGN KEY (account_id) REFERENCES public.accounts_account(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.accounts_account_user_permissions DROP CONSTRAINT accounts_account_use_account_id_816f9bde_fk_accounts_;
       public          postgres    false    217    252    3293            P           2606    17344 Z   accounts_account_user_permissions accounts_account_use_permission_id_24620205_fk_auth_perm    FK CONSTRAINT     �   ALTER TABLE ONLY public.accounts_account_user_permissions
    ADD CONSTRAINT accounts_account_use_permission_id_24620205_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.accounts_account_user_permissions DROP CONSTRAINT accounts_account_use_permission_id_24620205_fk_auth_perm;
       public          postgres    false    3309    252    223            K           2606    17290 Q   accounts_userprofile accounts_userprofile_user_id_92240672_fk_accounts_account_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.accounts_userprofile
    ADD CONSTRAINT accounts_userprofile_user_id_92240672_fk_accounts_account_id FOREIGN KEY (user_id) REFERENCES public.accounts_account(id) DEFERRABLE INITIALLY DEFERRED;
 {   ALTER TABLE ONLY public.accounts_userprofile DROP CONSTRAINT accounts_userprofile_user_id_92240672_fk_accounts_account_id;
       public          postgres    false    3293    217    246            <           2606    17101 O   auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm;
       public          postgres    false    223    227    3309            =           2606    17096 P   auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id;
       public          postgres    false    227    225    3314            ;           2606    17087 E   auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 o   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co;
       public          postgres    false    3300    219    223            ?           2606    17187 ?   carts_cartitem carts_cartitem_cart_id_9cb0a756_fk_carts_cart_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.carts_cartitem
    ADD CONSTRAINT carts_cartitem_cart_id_9cb0a756_fk_carts_cart_id FOREIGN KEY (cart_id) REFERENCES public.carts_cart(id) DEFERRABLE INITIALLY DEFERRED;
 i   ALTER TABLE ONLY public.carts_cartitem DROP CONSTRAINT carts_cartitem_cart_id_9cb0a756_fk_carts_cart_id;
       public          postgres    false    236    234    3343            @           2606    17175 E   carts_cartitem carts_cartitem_product_id_acd010e4_fk_store_product_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.carts_cartitem
    ADD CONSTRAINT carts_cartitem_product_id_acd010e4_fk_store_product_id FOREIGN KEY (product_id) REFERENCES public.store_product(id) DEFERRABLE INITIALLY DEFERRED;
 o   ALTER TABLE ONLY public.carts_cartitem DROP CONSTRAINT carts_cartitem_product_id_acd010e4_fk_store_product_id;
       public          postgres    false    236    3335    232            A           2606    17182 E   carts_cartitem carts_cartitem_user_id_4d21e0d9_fk_accounts_account_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.carts_cartitem
    ADD CONSTRAINT carts_cartitem_user_id_4d21e0d9_fk_accounts_account_id FOREIGN KEY (user_id) REFERENCES public.accounts_account(id) DEFERRABLE INITIALLY DEFERRED;
 o   ALTER TABLE ONLY public.carts_cartitem DROP CONSTRAINT carts_cartitem_user_id_4d21e0d9_fk_accounts_account_id;
       public          postgres    false    236    217    3293            9           2606    17050 G   django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 q   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co;
       public          postgres    false    219    221    3300            :           2606    17055 I   django_admin_log django_admin_log_user_id_c564eba6_fk_accounts_account_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_accounts_account_id FOREIGN KEY (user_id) REFERENCES public.accounts_account(id) DEFERRABLE INITIALLY DEFERRED;
 s   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_user_id_c564eba6_fk_accounts_account_id;
       public          postgres    false    217    221    3293            B           2606    17217 B   orders_order orders_order_payment_id_46928ccc_fk_orders_payment_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.orders_order
    ADD CONSTRAINT orders_order_payment_id_46928ccc_fk_orders_payment_id FOREIGN KEY (payment_id) REFERENCES public.orders_payment(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.orders_order DROP CONSTRAINT orders_order_payment_id_46928ccc_fk_orders_payment_id;
       public          postgres    false    3354    238    240            C           2606    17372 A   orders_order orders_order_user_id_e9b59eb1_fk_accounts_account_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.orders_order
    ADD CONSTRAINT orders_order_user_id_e9b59eb1_fk_accounts_account_id FOREIGN KEY (user_id) REFERENCES public.accounts_account(id) DEFERRABLE INITIALLY DEFERRED;
 k   ALTER TABLE ONLY public.orders_order DROP CONSTRAINT orders_order_user_id_e9b59eb1_fk_accounts_account_id;
       public          postgres    false    238    217    3293            E           2606    17233 L   orders_orderproduct orders_orderproduct_order_id_5022a3e2_fk_orders_order_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.orders_orderproduct
    ADD CONSTRAINT orders_orderproduct_order_id_5022a3e2_fk_orders_order_id FOREIGN KEY (order_id) REFERENCES public.orders_order(id) DEFERRABLE INITIALLY DEFERRED;
 v   ALTER TABLE ONLY public.orders_orderproduct DROP CONSTRAINT orders_orderproduct_order_id_5022a3e2_fk_orders_order_id;
       public          postgres    false    3351    242    238            F           2606    17238 P   orders_orderproduct orders_orderproduct_payment_id_492ed997_fk_orders_payment_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.orders_orderproduct
    ADD CONSTRAINT orders_orderproduct_payment_id_492ed997_fk_orders_payment_id FOREIGN KEY (payment_id) REFERENCES public.orders_payment(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.orders_orderproduct DROP CONSTRAINT orders_orderproduct_payment_id_492ed997_fk_orders_payment_id;
       public          postgres    false    240    242    3354            G           2606    17243 O   orders_orderproduct orders_orderproduct_product_id_4d6ac024_fk_store_product_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.orders_orderproduct
    ADD CONSTRAINT orders_orderproduct_product_id_4d6ac024_fk_store_product_id FOREIGN KEY (product_id) REFERENCES public.store_product(id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public.orders_orderproduct DROP CONSTRAINT orders_orderproduct_product_id_4d6ac024_fk_store_product_id;
       public          postgres    false    232    3335    242            H           2606    17248 O   orders_orderproduct orders_orderproduct_user_id_1e7a7ab7_fk_accounts_account_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.orders_orderproduct
    ADD CONSTRAINT orders_orderproduct_user_id_1e7a7ab7_fk_accounts_account_id FOREIGN KEY (user_id) REFERENCES public.accounts_account(id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public.orders_orderproduct DROP CONSTRAINT orders_orderproduct_user_id_1e7a7ab7_fk_accounts_account_id;
       public          postgres    false    217    3293    242            D           2606    17227 E   orders_payment orders_payment_user_id_cfa9f321_fk_accounts_account_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.orders_payment
    ADD CONSTRAINT orders_payment_user_id_cfa9f321_fk_accounts_account_id FOREIGN KEY (user_id) REFERENCES public.accounts_account(id) DEFERRABLE INITIALLY DEFERRED;
 o   ALTER TABLE ONLY public.orders_payment DROP CONSTRAINT orders_payment_user_id_cfa9f321_fk_accounts_account_id;
       public          postgres    false    240    217    3293            >           2606    17148 H   store_product store_product_category_id_574bae65_fk_category_category_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.store_product
    ADD CONSTRAINT store_product_category_id_574bae65_fk_category_category_id FOREIGN KEY (category_id) REFERENCES public.category_category(id) DEFERRABLE INITIALLY DEFERRED;
 r   ALTER TABLE ONLY public.store_product DROP CONSTRAINT store_product_category_id_574bae65_fk_category_category_id;
       public          postgres    false    232    229    3325            L           2606    17302 Q   store_productgallery store_productgallery_product_id_f2821a49_fk_store_product_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.store_productgallery
    ADD CONSTRAINT store_productgallery_product_id_f2821a49_fk_store_product_id FOREIGN KEY (product_id) REFERENCES public.store_product(id) DEFERRABLE INITIALLY DEFERRED;
 {   ALTER TABLE ONLY public.store_productgallery DROP CONSTRAINT store_productgallery_product_id_f2821a49_fk_store_product_id;
       public          postgres    false    232    248    3335            I           2606    17269 M   store_reviewrating store_reviewrating_product_id_2e1974d6_fk_store_product_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.store_reviewrating
    ADD CONSTRAINT store_reviewrating_product_id_2e1974d6_fk_store_product_id FOREIGN KEY (product_id) REFERENCES public.store_product(id) DEFERRABLE INITIALLY DEFERRED;
 w   ALTER TABLE ONLY public.store_reviewrating DROP CONSTRAINT store_reviewrating_product_id_2e1974d6_fk_store_product_id;
       public          postgres    false    3335    232    244            J           2606    17377 M   store_reviewrating store_reviewrating_user_id_da0ed849_fk_accounts_account_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.store_reviewrating
    ADD CONSTRAINT store_reviewrating_user_id_da0ed849_fk_accounts_account_id FOREIGN KEY (user_id) REFERENCES public.accounts_account(id) DEFERRABLE INITIALLY DEFERRED;
 w   ALTER TABLE ONLY public.store_reviewrating DROP CONSTRAINT store_reviewrating_user_id_da0ed849_fk_accounts_account_id;
       public          postgres    false    244    217    3293            �   �  x����n�@�k���.��;{�-EJB�1��J��؀m�o����$i-U啼�s3��YЕ�����[�K`�
�#����n��'�]�W���if'�=�!��%����y���K��&�m���(�L�q�����+���[ ��m2%�:�CQL&�q� r����L��ε+D�S�O�*��[��r]���J�l�d᜸�ή�}����p����γ��j��ȴ�]�Fi����&�������n�����Y(�始ֵO�e�X��:p�N\�UU�R���y׾#�ǧ]1*F�������׈���/Y���Kl�j�ں��z(]���%D��uq���R�Kw^꒘"ř�s��֏�S�Ir�
��c�U� �;9��ᩘS��/aV����v�̶�v�z��j��0zl�Z+^X������x��f��V4��ګ��7�S2f�t� R���o�,X��!T��TB0��2��p`i��sY�(W�;��* λjkb���5ۭz��)�.�E��ް1q��u�ŋ�h�f��dLDc\dm�F�d�q���$q�X��γ�#�]�0�N���T����q,��\*�:8G�����}=)
nA5�����þUk����d��Mg����^ۘ8x���CZ����L� *�F�ґ�l�h{��r��GHe���� 8�.(���{��� '���j�R�	�d�            x�3�42�4����� E�            x������ � �      �   �   x���A�0 ��W��@�gc<yQbbbb���5M���o�	|L�͓s��$�qB����6�k��ܶ~�h�ucY&1�=�.�l-�ZgM���.�T���1&��9�t,ս�n����*�~�_T�ڀp O���JE
�sh�qt�7�A"�c�"�chq��o�L�      �      x�3�.ILK����� n�      �   C   x����0���0��v��s�$tg�!:��狁N�F�0_�{H�	�����
��m�#      �   w  x�m�]��0F��U��Q�_���ƕF2���3��$vl�}ḵtJ>���g��0}�ݸnc�~�EG(#����I(U��"7��yť
su��N�&[u}��o�(�'h�#�D�U1�BD�؇��C�=���X����U�����"�$�NLZi%I�b�d3�E7��l�t�cz��u1u���Z
*%�HG���[�Th���5����~�&J��`oҏ��"wiE
%���Q[N������t�M�O�P�R�^Ô|���k�&@�r
4�&A�</�^�5
�	J5̠g��<0�z�P��O�s[�w��-.��R��E�05�Q���P�!��c�/&�掋l��U�7cy���]�d^fD�r�1�댨��3�� 3�nG��XAu?�B�@}��y6��S��>�=VƦ�G�U�D�E�J����T�1b8��6�-߬M�>�zk�����E��ԂƺE$���5~���؊͡��� U��'��H7hʃT XN��"�u~ZFc�o@*�4jN<��5�t�-b(NQ]�<�Wz鿧��~BKШa9Ҩ���P^6�b��xTW�=��b��م4�\�X���f/�� s[�͞�mza���7e�\���� ���k>      �   �  x�U�K��*D˜��7��}Ɋ �� ������{���^��Ip-��|M�";���]K5���y� CL�@��4�ɞJK[�*����d�~W�ȱ���%�q��o��\N��g*w����:~p�C�KU��{�Vb)\�0�����1��:L\9��*�dǷ2R�󫯫��' n[fM���6��;	qc��lf���l�)�`���3-i8�m�����ޏp֦�4��h���n�����3y>���9�����<Tv��B�7Ե8%��+!G��z%'�ԕٹ��:>�|[�Vv:Sn_�~��})�+d����} �<؇Q���a�������.~��؏5֣��L��Y�sq�z\�g2�Ęhl����2�zK�Va��>W�K��@��r�wL�3��5U�c�f�Z0Nn���y��vJg/3<'m�\��?������r���bC|쪦��pj�\Dw��LE�S��]10.����6! q@�T��J���Tc&G�y����S���b�:���m���5�Ɉ�~����v_����2N����Н��7� /FN4d�R���D�׽dE����ȑ���7�;Rf���Bq�7-�.���*�v��&N�:���%�y��:������Z��O&e�M �rBO�4���X���wxڣl�˂`Y�1�ou�a�ʨq%ɨ���gA��'w��ا$�f�6�LuM�L��Q��'|�+�'_C����}�y����j�)����G37��Vh�FDA~�[ͬG�u������Q9Vv��s-��!��]B[�3��噚n��F��:āsa}]�\I���0�"s���X���1��m;�m�Z�����v��n�O�����Z�#�!kQ�/��%�S�ħ��s���K)mі��/-�tG_I�ᡇM��ZY>i����M�:�.A����~�Φk�d�T�w����`��d� ���k�l˝�+B�o	W[�_�����t��U�;n�a��^u���qR��Ʃٟ#
��od�Բ�f�b�Z�/����y�.�׷��.�+�P>c)��J	 �=7Nj�w��,�ą��:���D�V)&�3r��*ևq2hOI��f^��W��0ms/-�g�N=52����&����U�oJ��Ğ��n�����C� -GD�>��.���d�hY?����1�[
�������oJ�y���>�2j.^�0I�ѓV-;�p92����cj�Θ ���#��h�`�K��V|�d��vv�g��&o;\{n�;;��sP`n��cD���'{L��!����3����Xz�$���c�u\_ƈ}�\${cfj�5"O߹K�d�n�6/X��${c��d�2��D�l�������'<?�c�U:��k���f����Zy7��ܙ z/n�ѷk߬�l�KRa�8�.�v�ˬZ'��=u�$�l�χ�'?� ��=�Õ9>�x�LT{����?�p���w}yALJ=ׇo뫢k,¿���;G�˸v���nl�Z��G>�������_g�����Ƈ�dĽ2�4M��I2N�E��V>М[�W�&�)<�����l ���N���χ	�}��BWP ��������\�x<��\��S�!��d�dƍ�G��?������И�      �   /   x�3��4�,�43�4���2��p!\�*k暚C�1z\\\ l�
�      �   �   x�m�M� F��)z�6���6ѭ+uab(��@��G�^����y3��BX�+ɩ�j��}�Js�Z;mF
m$ڂ6L׺y�x���-�����FI�FR`zL������u.�3N�1�[%�.h��FL�1��nኆwf�r?A2���d:7_a$�!��=�Q��F2mA��@�#y䄐?=k�'      �   �	  x��ZMs7=ӿ���z�n|�)��ڕMR�*g7�$�19��8�!��M*?(!W��m���@��u�@�z�1���`��Ke_�u�I�
+��~�h�g_��m��o?�v�,�������?�o��x[+��s<̾��]��	<
�Q�6���Ȝ�q6 (pV��xǿ7��u�Ue�Sv ��o��ղ�N�J<�U�!�i�U�oV��_5NR`mB����̾�m��~W��j�y�d�F;�n��fY���0K��O�f�n�徟�
�$��+��#������i�>Ń��j4���cZ;3o���]���|�Zt�|���n3��~�!��$��	+0FL
�n�]w��[����).�\�6�"tʸ$�7�zq�Z�� X����ί����۶S�g�]Ǐ�B �>)��j���8�/w��̯�����d��X�Z�֫�5O]��J����S0IL�5�_�MS�8Q��k�Y@\9�\��Yy7���ͪ]/���ǫ7�n񟫟���Y(�kZ{��%�^�}q���ךb��!e�����wN�~u�[u���:��5�-UAP �7��}�Y�W�M���������Y��EwW��v�,v�_�bH-B�dr���4)�Y����"HH�ɰ�<���SH�#��Bt�c��	*�q�{�Zߵ�e��ҙq�	2=��Y��>A�3�h�e�f��	0�8n7`/�ܩ*R`qX���jB&H��qR֪��}d��`B�/�V݊;�s��䃝���1���vI�q)�\^��Y:�q�^�Ʌ<��ljT�oho�^����0������&-^�e�D
�2R�&w1�\&�!\,��˹��T�i\��+�x����dO��\�θ,[N�x�z� �������h+v�*�.nns����3@����.�B��:�I<�I�<���r��K�.�=��~p�<_�U<�+�"���6�Q�g�sy�S4�<����i�q־�a�l׼�ai�z�Fa�	0��܄x�K1ϴ�F|�Gl�u2�f�P�@Ø�9�y
�� �p�c�*���s�STCF�17Jp��[���9MK��\��*	����4���`��y�T<O
�u��f� ?�ģ�Z��*�u*#&�E�G����LamA��$�{���+��D�a�4�X�K�`�@s�34��h���N��p��A���ķ^��ѫxOfp9[�:H��h�BZivQ�`��࠴R
Ke�i��n���S	-E�^X���ŒX����M�V�NNJ�7��ESS�4�Ԝ����BЩjbI,NJmD�J�%�:�4�x��:y+*I�I�E���E��%�:)4���r
1Uo*���J����N�T�mB:$��N�T��74*�RIi^*mD{v�i�%�y���9ü	��Pi��T��Ѧ+��K��sF�F��1�)���RKh���T��R��ý��4��I���!%�)�<�Kjŕ��V���ܦ$Ԡ�h6А�%��h�Gl�-�8��N���S��	���}�q.��.I-�<����jJRV�]l�A:W/I-�<4�6dJZ^��Q��b����ht>�*ִؒ�b�aWɖ��Ubo��JZI��@�AM�ڜ��J*쀃.�ʹ��z,��VR]8��AKy���W��lr���&�-���������Γ��g���O>����ƀ�$F����KY�O���m����`�H�g���G�j�'���>AAM�wI6��p�q�i�Z�ru�w��b��Y����W�_uo߷�]����x%pzq��f�{3���V�y�9�s�X%}����כ]ss���4C$�g�k��������G�o��m�߶�|�kv�m|���n��7���m�pڪO/��`L����ﳎx_���~���8�����VD�>ީq���>7z�Y��xAY�,V�G���2��5��u&5ǃhJĬŻ�v��6�D��5x����G��=� �wȦBE?s4��YGj޻k���R���q�D��d�O�8YC8O|K�a�٣<�p�S�^>{�M26�#Uyã��D%Sp�H���A�m���%�e�O�,����}8�i#�����ծ��D=L��U��͇R�?}ۜ���H��x�����Q��{<\N	�{�d&?v���^�p��y��1����Lq�q�ojLw��#_�Q�xC=�Fa�����'����_��\:7L)�1A�^�����!�4��+<��3,,�t�G!�������,=�����:9|�ȤE��2X�?��L0ޅ2��������ڐ{�;97��Lr�o��բ=���ၘ�e[�����~_��0��|K�xy�HL|�Dq2Q�ގ�ѷ��ݾ����r�D�㽡{��<�L]�Ѽ�W�fW�<���nx�FnEW|pf*�F	��"����Uɼ��k�S��ŋ��>      �   �   x�UO�r�0<��tB��������[h %㿯��y\`�Y� �$�< �!�(��m �9�$q� 4���:g�,�7&���'�R�K}�l�~��a�/0e�*c�������kv��v/���jP�2w_��Ƭm���4�)_2_5x.	����l�>牑N�o�0Mܣ�| �5�k�      �   	  x���[n�0E��Ut5DR� ��1���鴻JN��M��	��=$/��@��vù��J��۩m�
ҋ�/(��y�<���Y�/B>a��)���q��(	�f!U�����(,Y�%r�`�WM!���Cs������ґ-e�ʠ�����v��k������x��,�����f��n._��M�c�����Q���?`��Jq�(04�S8�tl�1�+�c����W�P�@�QnA�u�%����B0�b��kL~)��鶣RX�K' C]3�f��Z��ݶF�'�D�>��۴,�l*d��0H�yZ ���[ӵ�f�X�SR8�qlw�"A[Wbr�ٛ��d3
;�Br�,z%�.���qA�p>=�qjvj�.@8�ءNix��
�{���ޗ4^�ڦG�"���v��aH??ORjWT(�1^z�Y������)��1�5B���נI�dk�q&`5r��ݪ(<�L�B��S,G���A�������Ϝ*�F�j�mjn���un�W��f������^M���zajiէH����S3��a#dy2�V�|���e�%�׶��R2o��+�ڵ&� �ϻ��t]�-R��e��V g��ݦ*m\rH������4�P|�����Z\>,W\��60a~w�$m�#�Q�F�����Zn��������SMt�o�:��b��^
/U͇���@ruB}��W9��c���f}E0`�/�!��`�*��� ��@�O��`+�']Vk[6��~zz��;j.      �   s  x�՘ɮ�h���O/ࣟ��3����ilӨ$Dߛ��O��7�VdEJ�IJ�������k;�d�6{�	ӽL����j��߾y}�eu_6�i�i�j�{F��n�^i��f��+���:AJ#t��" +��i�b4d��
h��d)��M����U��<�I/T�3�JP1�)�O�Q�R;b3tN���]�w?���,;�v���qٶ�2ѫ[�4��E,D�4�is�gy�j��U����')e����ەg��^�n�9r��=����;ȱ��來���߯n*�g�k���=�c`��<���/�@!�� �;ZU;��H��S�l���� �b���'��7K�O���9�pTq�\ΩH|��䌟�E�ĦE
ڧ�v�LS��(���JQ�f`,�9ۛ7��F�=4�`'i��Rt(�G�^w��P#�7�FU���P�Y��vX�Yu;�?��YYW�R�{�����%H�wKa	��{5��æ��кٵ��z������z��A�� Ǿ�q�j���>?��3�k��}T��K���~F�/�����Y&��6���]PM����ѪN?�0�d����`6=	�M`����9
7�
��x>CZS��nH���Y)G�'/|��|���{�2Cn3Y6����nOz���}psYuQ��\P6J�Q�u]�1#}�3R�4j,���b;�hL�d���N4�vZ�s��ѵ�i�R<�kX-�.Cvϋ+��D-r�A�.oܙ2���Ɋ�xHoq�x$�z�`|J�r�x�s&�K^�?IR��9C��/GP~��i��F��t�}y�i� ���?I~~�4����F�7I�q{������dŷkQ���ņ4AH��rB�3��DG��!����N�{�d�`Ɠ�;��;7;�^�h^̇p��OYy���YMa�6�T�oZhp<�M��/.�����ih{ ♸>��p�E���2 ��M���y69?���J"{
S�U3����
� 9�F�4�h'4�޶��UX�L!� 	�!h�"��m!b|�UT.$#(�7� �����'��l�����n�|w�Ar�VD�b���U��/��w��f\i�-<���%���G�d��E��!���͹�6����>u�AW����BA|j�R�U�1-;<^7ly�X��mn�P���1q���I��t����@����]މc#�P\�����T�^8MF2�oJ���R��D���_�������e5'�1@2����W"� V�x�_P>ٟ(ofB�w
��YisOm������>n��*�k���w7�tyH�ml��|�ά�[�1�̅!:A��c�"�7ؑ�&�QI�s\c�H�\w�G�W�X�}����a-WiG�ʊ"��|��0EKM8+����"��n	���Fz�O��I�wI\��2���%��/'g̜Ɩ�7�~ڰ<ʢ�N?Cش�#��.���Q� ?�
:�z��P�}�'}�WA���DǑ��?$)'�iAרS1���Ir�}p�w��}Bm��v��s\(W�#�#i��Xo0���YE���#NJ�*���wx
gh��3[BE�Uf���n���I+�IL�Ey���,7�d�KX����i�a�1���|6���
�i�J.>�U�|p��=G�����G���$8X�뙝ܙ��I��4X��*{��_���@�3v��")"?ү��%����P޾I��b	
����M����&���I,�m��)�
U�;�݇.Wx�DsW#�q��.�y
��[��uHM+�Q釳��D���>�>��k]��Tʴ�`,}P �#?�T���M��y<�\��Wث��@0Ja]A��U�e�0�D��@/)uԮ�[��֜ۻt*fN�ē��[F)+���Jo�	_���m�_�x��������B�9�u9.[E�u8�y��I���ɡ%�����e��g&+���SH���B?Cʳ��<8�JL8�
�d\�_Rߖ��ÿH�D�ѷ����i�.)
�z�A�`��(~K6�0�k�`=�5݅M��B��Ǣ0FU�K�/ٮ>�U�D�zQ�� �w3v�;+>�ʈx��F�duY���_�1��p<dv*���~u,��^{8r��/@!ž�b� X�K0��F�P}�mM�o���&c��q�7����?W��������[`<�b����k��L�[���*ݮ�^`W�8]0�	�g0���2�\$hN_"�Y�b���N�<>:g^NZ�E`Zu������'�^�����/�G��ϐ�����?9���M�i��2}�b�z!��)��x����ɏ�/'fK#�Y���Tє^�s��Y��Q�e�sj�h=zF!!j���JT1����r�t�M�_1s<z(kLӂ������'X���>�eiZғFF�T��> B��,�BS��z�ڐ�j��Y��9BL�cSh&��#ӷVx9b�������G}ճ�E��1+g��5Vw�Ph�����I 	��"M,=�}���Ï+�����o����-FUX�u�E`X&��?�D�U��3�ט��ŵK���!�Jx�3n�d���)�oD��xr�X��=���!دz� �#���G���]��tܢ��.9^��n�b0򎓝%�sI�xo�����ⷤ%�1e��+��Ns����#g��J|����KBVk��uY�s��Z�dũ�?=��Wr�N�J(��IW	�jk��)p��P#E��I�0�������JJW�k�o���="\I>LkA��A)&y���9>z�q�����Lfӌ�d��Y�;V�:��e ��%c�6w&�{�F:�s����.	?�쇼f�O�h]f�tj4��0߷�킜�*6�E��'�hq^׆�����U�=�.b��Hi��n9;C�#P�$�������:�      �   �  x�ՙ�n�F�ף��ԃ9��q (Rhm�U6�M�
��d��t�u�/�3C�C��kt��e�?`�ә��(4Hơ������z��)���U�O���x`���ysx�߽�?�?�۝�=|V��/���n�ss��5��m}Z�t؟�������n�`�o;����j���_���c�~����������z�>�j�V�4�2��}�����M~��nЯ+��aMl|��ө��1��+���8;o}�ۤ����,hрwiDB(����]Q;�y��K�sO��$Fвh�$qJ	�۞�.����	��$�)C�B�zb�Db_Y�rp9��]\(���ڛH�`I��Bz�D�X������M#Y�
q����T`4J���M]茥���'���,*��:�v�N����
����?�)y��6��:�i�>��v��K����X���)��A��"^�D�b�o�N�u��]�z�݋m^�fva��M�	���,Ѿ�J�!�EO2�Tt�����Uĕ�ndG��s�F4q�#P��`�'��Vo�4�ܥ���.˓0�8T��� ���������4�+�+v2=`#'))�VĻ[���������&Ӣ���0^�����ŐS��E=q	�y�*$
T���N0	1�`(����x����d�KG�&�,�,l�0l'*�ȥ7���Y�6NH��%R_�(}W�z[^��>�Hgq���&.�6G;8�]-~�ȼr�!�{�vsF.�oȯ..�4���B3������;C-V��[�Y����QQ��"�ޏ�d�� hk���}�fТ�8�V����b��rOmWNf��1�[�I�X��b�@
T2�P�*4�#��)�
�vl�sQcF�}J�r~T+T��Yΐ��0uWy4�˒�����!��'�W�?h���l���9���RjȠ��_?5���t�7���o�?����r�W�u��2Lz���I�u��B؇�xAdnE"]O�����]AEiy�������iBe����0���������ը��h�p��L�WDu~Ix�|����<ポ@�n �X�od�#~B��-�LҘz	>�K�&v�d2��,s�ڦA�P��s{���Ê:�����\����m�7R7.0�!f����02R^��}�^�V�*�&z      �   [  x����q� Eϸ
7���B�����'dט��=�F�KH%�wbby�>���.�E3	����E�qd㥭�k�U	��m7�IN��m��r%�n�L�䰕�T'�:G��j��mAK(t�jH��zo�����Fm2ٚ��9�Y��tTV���mŹ��z{������fk�:Z�b��ۂ�dgm=lS�,�p��E�sm+j�����1</TR�nE���g�v�Kܩ/-ݚF�t�
��FL;�%� ل:��{G�R�����%���;u�1�>�ԋoIE��c5ʫ��1dN=K&���Tb����u��r��?�~���7��^�86I_��Z�t��e����+o������      �   �  x����n�@���)xF�~�]H�LZT��R7�w�m߾��"�����g������@��X8��(�׿^��T�?���zU��`K�J#j
5	P|	R�*~J�~����2��KC���z���4)A�M���y�%�T��2^()S��O:�	+>�Iq����XZ�W���uC�����ʟP�HFU���PVd|�`�S<`=S\�>��!��+;%ϔ�/�h�����>��1�+�{<n�	e<��(L�I��k_��Le��1U�@�Y_�QI��m7�FQ�y�
�|����W��5Պ��X 5�Z�N&3�Ŧ�� }X��V�r�A�ѓ	:S: �������H�w*+~��[��lx.��%E.���j���I���ŕ>F߱|�!de��'��P�=|���X!����E����S�~Vr3���U�a�Ǐ��      �   �  x���͊�0���S��h�m�����]��Kaq%���-��G�/V��n�&<�����h��~���q�7݀�]���7�ȻHf�l=I"�R�?t�W��m�MWI�Ͻ�#�"��4�s�tBQm�MNy�t\RÍd&��P��.$���m�?�A��\����m�#�:�����Ą�G`?`���)E�0\�3.��8�-%��f�=V����f�f�oS�cԕz�.�c�
�s��&�+
@��\Ϫ-$����>_���w;C�f_��*N�W0'=-k�W��G�
hz--�b���j�J�X��`%�eVu���4�.s�]H<|FMve��E�eT^3�?��� M]���+P켢%�\l�J*�=C}���Poi<�׾�È�aj�n�h|��뢑�M��~���h�^i�n�2�O��^B���
��~X��OF���0ŪB�������w���l6u�6OX�l笂6O.�,M��E� {;�         =   x�3�,.�/J�/(�O)M.)�/H-J��J�L�4�2B�L�����N,J���*H������ 7��      �   }   x�uͻ�0F��y��@,�wR�^�����T�3yq�@���R_e���L��e��A��-l��=K�THXQ�V�[	�@��u��n?o���D�wh�"��R���u���:\8�� -�&6     