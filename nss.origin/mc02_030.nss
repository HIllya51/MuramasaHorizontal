//<continuation number="480">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mc02_030.nss_MAIN
{

	

	if(($SYSTEM_skip && #SYSTEM_skip_express && $AllRead) || ($SYSTEM_skip && #SYSTEM_skip_express && #SYSTEM_skip_absolute)){
		SkipOut();
	}else{
		$MainGameName="@->"+$GameName;
		GameMainSet();
		call_scene $MainGameName;
		GameMainSet2();
	}

	//�����٥�ȣã�
	#���٥�ȥե�������=true;
	#bg069_���ӘS���ڎ��g_01a=true;

	//����`�ȥե饰���x�k֫���Τ�GameName
	$PreGameName = $GameName;

//	#�w�д�̽���K�� = true;

	if(#�w�д�̽���K��){
			$SelectGameName="@->"+$GameName+"_SELECT";
			call_scene $SelectGameName;
	}else{
		$GameName = "mc02_031start.nss";
	}


}

scene mc02_030.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();


..//������ָ��
//ǰ�ե����롡"mc02_029.nss"


//����g��
	PrintBG("�ϱ���", 30000);
	SoundPlay("@mbgm12",0,1000,true);
	CreateColorSP("�\Ļ��", 15000, "BLACK");
	CreateTextureSP("�}����20", 1000, Center, Middle, "cg/bg/bg069_���ӘS���ڎ��g_01a.jpg");

	Delete("�ϱ���");
	DrawDelete("�\Ļ��", 300, 1000, "slide_03_00_0", true);

	StR(1000, @0, @0, "cg/st/st�׵�_ͨ��_�Ʒ�.png");
	FadeStR(300, true);

	SetFwC("cg/fw/fw�׵�_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
//���׵���
<voice name="�׵�" class="�׵�" src="voice/mc02/0300010a08">
��ͯ�Ĵ��ˣ�
��ʨ�Ӻ𵽵�����ʲô!?��


{	StL(1000, @0, @0, "cg/st/stͯ��_ͨ��_˽��b.png");
	FadeStL(300, false);
	FwC("cg/fw/fwͯ��_��˼.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/mc02/0300020a09">
���������Ҳ��֪����
����ǲʹ��ǰȥѯ�ʣ�Ҳû�л���������


//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/mc02/0300030a09">
����������ȥ��Ҳ�ò����𰸡���


{	FwC("cg/fw/fw�׵�_����.png");}
//���׵���
<voice name="�׵�" class="�׵�" src="voice/mc02/0300040a08">
�����Զ��þ��ӡ���
�����ò�����Ҫ����ı��!?��


{	FwC("cg/fw/fwͯ��_��˼.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/mc02/0300050a09">
���Ǿ͹��ˡ�
����������¶�ǵ�Σ�վٶ���
Ҳ�Ӳ���ìͷָ��������Щ
��Ӧ�����Ʋõ��ˡ���


//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/mc02/0300060a09">
�������޴�����Ϊ�����޷���⡣
������˵����ǰʨ�Ӻ�������ڴ����
���ң���ʱ�����Ѹ���������


{	FwC("cg/fw/fw�׵�_ŭ��.png");}
//���׵���
<voice name="�׵�" class="�׵�" src="voice/mc02/0300070a08">
�������ǡ���
���Ǹ����ŵ�����ʲô��ͼ����


{	FwC("cg/fw/fwͯ��_��˼.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/mc02/0300080a09">
����֪��������


{	FwC("cg/fw/fw�׵�_�䵨.png");}
//���׵���
<voice name="�׵�" class="�׵�" src="voice/mc02/0300090a08">
�����ǵģ��׳�ֻҪ�����һ��
�͹��ˣ�
���治֪���Ǽһ��ڸ�ʲô����


{	FwC("cg/fw/fwͯ��_ͨ��.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/mc02/0300100a09">
���ҽ���û������
���׵������ء�������


{	FwC("cg/fw/fw�׵�_����.png");}
//���׵���
<voice name="�׵�" class="�׵�" src="voice/mc02/0300110a08">
����Ҳû������
��������������ӵ�ʱ��
ȥ���˷�ʱ���˰�����


{	FwC("cg/fw/fwͯ��_��˼.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/mc02/0300120a09">
����������


{	FwC("cg/fw/fw�׵�_ŭ��.png");}
//���׵���
<voice name="�׵�" class="�׵�" src="voice/mc02/0300130a08">
�����ˣ���


{	OnSE("se�ճ�_����_���饤���_��02", 1000);
	NwC("cg/fw/nw����.png");}
//������㣯������
<voice name="����㣯����" class="����������" src="voice/mc02/0300140e054">
���ǣ���


{	FwC("cg/fw/fw�׵�_����.png");}
//���׵���
<voice name="�׵�" class="�׵�" src="voice/mc02/0300150a08">
����ȥȷ�����ɡ������ϵ��°�ȫ����
��û������!?
����ȥ��ô���ˣ���


{	NwC("cg/fw/nw����.png");}
//������㣯������
<voice name="����㣯����" class="����������" src="voice/mc02/0300160e054">
���ǡ��ǡ�����δ����������


{	FwC("cg/fw/fw�׵�_ŭ��.png");}
//���׵���
<voice name="�׵�" class="�׵�" src="voice/mc02/0300170a08">
����Ҳȥ�ɣ���


{	NwC("cg/fw/nw����.png");}
//������㣯������
<voice name="����㣯����" class="����������" src="voice/mc02/0300180e054">
����������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���ߤ�ȥ��


	CreateSE("�ϥ��åƥ����ޥ�", "se����_����_�ߤ�07");
	MusicStart("�ϥ��åƥ����ޥ�",0,1000,0,1000,null,true);
	WaitKey(1500);
	SetVolume("�ϥ��åƥ����ޥ�", 1500, 0, Axl3);


	SetFwC("cg/fw/fw�׵�_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
//���׵���
<voice name="�׵�" class="�׵�" src="voice/mc02/0300190a08">
�������ܲ��ˣ���ô��һ�����С�������


{	FwC("cg/fw/fwͯ��_ͨ��.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/mc02/0300200a09">
������������


{	FwC("cg/fw/fwͯ��_��˼.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/mc02/0300210a09">
���������ˡ����������𡭡���


{	FwC("cg/fw/fw�׵�_����.png");}
//���׵���
<voice name="�׵�" class="�׵�" src="voice/mc02/0300220a08">
����
��ͯ�Ĵ��ˣ�����ô�ˣ���


{	FwC("cg/fw/fwͯ��_ͨ��.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/mc02/0300230a09">
���׵����ˡ�
�������ֱ���ʣ�µ�ʿ����Ӧ��
����ȫ������ս�����á���


{	FwC("cg/fw/fw�׵�_�@��.png");}
//���׵���
<voice name="�׵�" class="�׵�" src="voice/mc02/0300240a08">
���ף�
���ɡ������ǡ��ֲ���˵���˻�
����������


{	FwC("cg/fw/fwͯ��_ͨ��.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/mc02/0300250a09">
�������湥��������̫���ˡ�
���������������ģ��׵����ˡ���


{	FwC("cg/fw/fw�׵�_����.png");}
//���׵���
<voice name="�׵�" class="�׵�" src="voice/mc02/0300260a08">
������������


{	FwC("cg/fw/fwͯ��_ͨ��.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/mc02/0300270a09">
������Ӧ��������������վ��䣬���·�����
���������ǡ������˿��ɵĺ����������


{	FwC("cg/fw/fwͯ��_��˼.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/mc02/0300280a09">
������������Ȱ�棬�ͽ�����١�
���ܶԷ��ǡ���
��Ļ�������ǽ�פ������


{	FwC("cg/fw/fw�׵�_�@��.png");}
//���׵���
<voice name="�׵�" class="�׵�" src="voice/mc02/0300290a08">
���⡢��Ҳ̫�����ֱ��˰ɣ���


{	FwC("cg/fw/fwͯ��_ͨ��.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/mc02/0300300a09">
��û���ֱ���
���Ա��Ʊ�����

//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/mc02/0300310a09">
���Դ����Ŷ����ǿ����
������Ҫ��Ȱ�أ�
�����ǽ���һ��������Ȼ��
����ȶԷ��ء���

//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/mc02/0300320a09">
��ֻҪ�Է������ǿ�������ˡ�
��������ԩ���ģ�Ҳ����ν��ֻҪ����
˵����ǿ���Ϳ����ˡ�����

//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/mc02/0300330a09">
��ִ��֮������ӵ��������һ����
��<RUBY text="������">ֻҪӮ</RUBY>һ�о�˵�ù�ȥ����


{	FwC("cg/fw/fw�׵�_�@��.png");}
//���׵���
<voice name="�׵�" class="�׵�" src="voice/mc02/0300340a08">
����������
������ͯ�Ĵ��ˡ�����


{	FwC("cg/fw/fw�׵�_܊��.png");}
//���׵���
<voice name="�׵�" class="�׵�" src="voice/mc02/0300350a08">
�����ｫ��Ϊս������
��������ô��Ϊ���𣿡�


{	FwC("cg/fw/fwͯ��_��˼.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/mc02/0300360a09">
����˭���µľ֣�����������ս����
�һ����ܶ��ԡ���


{	FwC("cg/fw/fw�׵�_܊��.png");}
//���׵���
<voice name="�׵�" class="�׵�" src="voice/mc02/0300370a08">
���������ˡ�
����ô������ڿ�ʼ��Ϊ��Ϊս���ɡ���


//���׵���
<voice name="�׵�" class="�׵�" src="voice/mc02/0300380a08">
��������ʿ�󽫼��ϣ���


{	FwC("cg/fw/fwͯ��_ͨ��.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/mc02/0300390a09">
���뾡�졣��


{	FwC("cg/fw/fw�׵�_܊��.png");}
//���׵���
<voice name="�׵�" class="�׵�" src="voice/mc02/0300400a08">
���ǡ�����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���o�T�����l���z�������
	CreateSE("�ϥ��åƥ��ޥ�", "se����_����_�z_�}���l���Ĥ�01");
	MusicStart("�ϥ��åƥ��ޥ�",0,1000,0,1150,null,true);
	WaitKey(3000);
	SetVolume("�ϥ��åƥ��ޥ�", 0, 0, Axl3);

	OnSE("se�ճ�_����_���饤���_��02", 1000);

	SetNwC("cg/fw/nw�o�T��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
//������㣯��������ߡ�
<voice name="����㣯���������" class="����������" src="voice/mc02/0300410e048">
����������������!!��


{	FwC("cg/fw/fwͯ��_ͨ��.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/mc02/0300420a09">
�����£���


{	NwC("cg/fw/nw�o�T��.png");}
//������㣯��������ߡ�
<voice name="����㣯���������" class="����������" src="voice/mc02/0300430e048">
����������������


{	FwC("cg/fw/fw�׵�_����.png");}
//���׵���
<voice name="�׵�" class="�׵�" src="voice/mc02/0300440a08">
����ô��!?
����˵������


{	NwC("cg/fw/nw�o�T��.png");}
//������㣯��������ߡ�
<voice name="����㣯���������" class="����������" src="voice/mc02/0300450e048">
������������
������������������


{	NwC("cg/fw/nw�o�T��.png");}
//������㣯��������ߡ�
<voice name="����㣯���������" class="����������" src="voice/mc02/0300460e048">
�����Ǻ�!!
��ͻ����ͻϮ!!�����ǵĳǱ�!!��


{	FwC("cg/fw/fwͯ��_�@��.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/mc02/0300470a09">
������������


{	FwC("cg/fw/fw�׵�_�@��.png");}
//���׵���
<voice name="�׵�" class="�׵�" src="voice/mc02/0300480a08">
���㡭��
����˵ʲô����!?��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	ClearWaitAll(2000, 2000);

}

..//������ָ��
//�Υե����롡"mc02_031start.nss"

//�����å���
scene mc02_030.nss_SELECT
{
//���x�k֫ǰ���x
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

//��ǰ��״�B���x
	PrintGO("������", 30000);

	CreateColorSP("�\", 100, "BLACK");

	FadeDelete("������", 0, true);


//���x�k֫
	SetChoice02("�������н�̽��","���������н�̽��");
	select
	{
		//���`������
		CursorPosition($CsrX,$CsrY);
		if($CsrY!=288){
			if($SYSTEM_keydown_left){
				$LOCAL_keydown_left=true;
				ChoiceCursor();
			}else if($SYSTEM_keydown_right){
				$LOCAL_keydown_right=true;
				ChoiceCursor();
			}else if($SYSTEM_keydown_up){
				$LOCAL_keydown_up=true;
				ChoiceCursor();
			}else if($SYSTEM_keydown_down){
				$LOCAL_keydown_down=true;
				ChoiceCursor();
			}else if($SYSTEM_mousewheel_up){
				$LOCAL_mousewheel_up=true;
				ChoiceCursor();
			}else if($SYSTEM_mousewheel_down){
				$LOCAL_mousewheel_down=true;
				ChoiceCursor();
			}
			$SYSTEM_mousewheel_up=false;
			$SYSTEM_mousewheel_down=false;
		}		

		if(!#PreSaveFlag){
			SelectSave();
		}

		if($SYSTEM_skip||$SYSTEM_text_auto){
			$SYSTEM_skip=false;
			$SYSTEM_text_auto=false;
		}
	
		case @�x�k֫��
		{
			ChoiceA02();
//���A�ӷ�ꇤ򥹥��åפ���
			$GameName = "mc02_031end.nss";
		}
		case @�x�k֫��
		{
			ChoiceB02();
//���A�ӷ�ꇤ򥹥��åפ��ʤ�
			$GameName = "mc02_031start.nss";
		}
	}
}


