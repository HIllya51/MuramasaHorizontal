//<continuation number="400">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene ma02_014.nss_MAIN
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
	#bg023_��Դ̫�μ�_03a=true;


	//����`�ȥե饰���x�k֫���Τ�GameName
	$PreGameName = $GameName;

	$SelectGameName="@->"+$GameName+"_SELECT";
	call_scene $SelectGameName;

}

scene ma02_014.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();



..//������ָ��
//ǰ�ե����롡"ma02_013a.nss"
//ǰ�ե����롡"ma02_013b.nss"
//ǰ�ե����롡"ma02_013c.nss"

//������

	PrintBG("�ϱ���", 15000);

	OnBG(100,"bg023_��Դ̫�μ�_03a.jpg");
	FadeBG(0,true);

	FadeDelete("�ϱ���", 0, true);

	SoundPlay("@mbgm30",0,1000,true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0001]
����������ֻ������ϲ���ˡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	SetFwC("cg/fw/fw����֦_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
//������֦��
<voice name="����֦" class="����֦" src="voice/ma02/0140010a03">
��Ҳ���������ֳƺ��Ұɡ�
�������ˡ���


{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/ma02/0140020a00">
��лл������ξ����


{	FwC("cg/fw/fw����֦_����.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma02/0140030a03">
������������������


{	FwC("cg/fw/fw�դ�_ͨ��.png");}
//���դʡ�
<voice name="�դ�" class="�դ�" src="voice/ma02/0140040b06">
����ξ����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
�����Ե���ģ���ŷ�����
������Ǻܸ���Ȥ�ɣ��ӳԷ�֮ǰ��ʼ����һֱĿ��ת��
�ض��Ÿղŵ������߿���

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	SetFwC("cg/fw/fw�դ�_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
//���դʡ�
<voice name="�դ�" class="�դ�" src="voice/ma02/0140050b06">
����ξ����


{	FwC("cg/fw/fw����֦_ͨ��a.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma02/0140060a03">
���ǣ�
����ô�ˣ���


{	FwC("cg/fw/fw�դ�_Ц��.png");}
//���դʡ�
<voice name="�դ�" class="�դ�" src="voice/ma02/0140070b06">
���ô󰡡�����


{	FwC("cg/fw/fw����֦_����å�.png");
	OnSE("se�M��_���ߥ���_���`��01",1000);
	SetComic(@0,@0,8);}
//�����`��
//������֦��
<voice name="����֦" class="����֦" src="voice/ma02/0140080a03">
���Ȱ�!?��


{	DeleteComic();
	FwC("cg/fw/fw����_�@��.png");}
//�����衿
<voice name="����" class="����" src="voice/ma02/0140090a04">
����������С����˼��Էν��!?��


{	FwC("cg/fw/fw�դ�_�n��.png");}
//���դ���
<voice name="�դ�" class="�դ�" src="voice/ma02/0140100b05">
���֡����֡��֡�����
�����Ů��˵ʲô�أ���


{	FwC("cg/fw/fw����֦_����å�b.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma02/0140110a03">
���ȡ��ȡ��ȿȡ�������


{	FwC("cg/fw/fw����_��.png");}
//�����衿
<voice name="����" class="����" src="voice/ma02/0140120a04">
����������С�㣬����Ǻ��ձ�����
���ǿ�ϧ��������Ҳ�ð�Ȼ����ȥ����
ɴ���һ�Ϊ����ڤ���ġ���


{	FwC("cg/fw/fw����֦_ŭ��.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma02/0140130a03">
���š��š��������ء�˵�仰���Ļ�������
���⡢���̶ֳȵĴ�����Ҵ�������֦��
���ᡭ����


{	FwC("cg/fw/fw����_ͨ��a.png");}
//�����衿
<voice name="����" class="����" src="voice/ma02/0140140a04">
�������Ǵ�С�㡣������ز�Ҫ�黳��
���������Ҳ���Ǳ�����ĺ��ӻ���̹�ʵ�����
������ָ����ʵ���ѡ���


{	FwC("cg/fw/fw����֦_����å�.png");
	OnSE("se�M��_���ߥ���_���`��02",1000);
	SetComic(@0,@0,8);}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma02/0140150a03">
���°�!?��


{	DeleteComic();
	FwC("cg/fw/fw����_ͨ��a.png");}
//�����衿
<voice name="����" class="����" src="voice/ma02/0140160a04">
����С��!?�����������ಡ����!?��


{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/ma02/0140170a00">
��������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050]
������֦С�����߹�����һ�ߩ��������ϡ�
����ΪŮ����ȷʵ���൱�ߵ�����ˡ��ֶԴ˸е�
����Ҳ�Ϻ�����

�������������黳���ȵؽ�����һ˵����Ҳ�Ǻ���
����ġ�
����ͨ�׵ļ�ֵ���¿�����Ů�Ի��ǽ�С��Ƚ���
��������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0060]
//��������
<voice name="����" class="��������" src="voice/ma02/0140180a01">
����Ұ�������

{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/ma02/0140190a00">
���ܸо�������ɿ���𰡣�

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/ma02/0140200a01">
������˵ʵ�ڵģ���Ҳ��ͬ�С�
���һ�������ʱ�򣬾���������Ҳû��
��ô�ߵ���ߡ���

{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/ma02/0140210a00">
�����Ҳ����ô�ټ��ˣ�

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/ma02/0140220a01">
������Ϊ�ԵĶ�����һ�����𣿡�

{	FwC("cg/fw/fw�դ�_����.png");}
//���դ���
<voice name="�դ�" class="�դ�" src="voice/ma02/0140230b05">
���Բ��𡢶Բ���
���⺢�����û�ж��⡣ֻ��
�Ǹ������������顭����


{	FwC("cg/fw/fw����֦_ŭЦ.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma02/0140240a03">
���ǡ��Ǻǡ�
���������ˡ���һ���Ҳ�����⡣��


{	FwC("cg/fw/fw����_ͨ��a.png");}
//�����衿
<voice name="����" class="����" src="voice/ma02/0140250a04">
���ǰ����ǰ���������⡣
���⺢���Ǹ���ʵ��˵�ѻ��ĺú����
�԰ɴ�С�㡣��


{	FwC("cg/fw/fw����֦_�@��.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma02/0140260a03">
����֪�����ǹ�İ���������߻���!?��


{	FwC("cg/fw/fw�դ�_����.png");}
//���դ���
<voice name="�դ�" class="�դ�" src="voice/ma02/0140270b05">
���ԡ��ԡ��Բ���!!��


{	FwC("cg/fw/fw����֦_ŭЦ.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma02/0140280a03">
��û��ûʲô��ʲô�¶�û��Ŷ��
��Ŷ�ǺǺǺǡ���


{	FwC("cg/fw/fw�դ�_Ц��.png");}
//���դʡ�
<voice name="�դ�" class="�դ�" src="voice/ma02/0140290b06">
����ξ���ô󡣡�


{	FwC("cg/fw/fw����_Ц�.png");}
//�����衿
<voice name="����" class="����" src="voice/ma02/0140300a04">
��û���أ��ܴ��ء���


{	FwC("cg/fw/fw����֦_����.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma02/0140310a03">
���ǡ��ǺǺǺǡ������������ء�����


{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/ma02/0140320a01">
���������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0070]
��ȷʵ��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw�դ�_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0080]
//���դ���
<voice name="�դ�" class="�դ�" src="voice/ma02/0140330b05">
���������ǣ����ǿ���
��������ʿ����վ��һ��ܺ����ء���


{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma02/0140340a00">
������


{	FwC("cg/fw/fw�դ�_ͨ��.png");}
//���դ���
<voice name="�դ�" class="�դ�" src="voice/ma02/0140350b05">
����ʿ����Ҳ���Ǳ����á�
����λ��һ����ȥ����续һ�㡣��


{	FwC("cg/fw/fw����֦_Ц�.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma02/0140360a03">
����ѽ����


{	FwC("cg/fw/fw����_ͨ��a.png");}
//�����衿
<voice name="����" class="����" src="voice/ma02/0140370a04">
���Ǻǡ�
�����ָߵ��ŵ����ء���


{	FwC("cg/fw/fw�դ�_��˼�h.png");}
//���դʡ�
<voice name="�դ�" class="�դ�" src="voice/ma02/0140380b06">
��Ŷ��
�����䣿��


{	CreateSE("SE01","se�M��_���ߥ���_�פ�");
	FwC("cg/fw/fw����֦_�դ�.png");
	MusicStart("SE01",0,1000,0,1000,null,false);
	SetComic(@0,@0,13);}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma02/0140390a03">
����������


{	DeleteComic();
	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/ma02/0140400a00">
��������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D



//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0090]
���Һʹ�����ξ��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

}


//���x�k���ʤ�ۤɣ��ष��c�֤η������������ˤϴ�������
//���Σ�090323����������x�k֫�ϣ���`�ȥ��ꥢ��Τ�


.//������ָ��
//���ʤ�ۤɡ�"ma02_014a.nss"
//���ष��c�֤η���������"ma02_014b.nss"
//�����ˤϴ���������"ma02_014c.nss"

//���x�k֫���`��
scene ma02_014.nss_SELECT
{
//���x�k֫ǰ���x
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

//��ǰ��״�B���x
	PrintGO("������", 30000);

	OnBG(100,"bg023_��Դ̫�μ�_03a.jpg");
	FadeBG(0,true);

	FadeDelete("������", 0, true);

	SoundPlay("@mbgm30",0,1000,true);

//���x�k֫
//�ʤ�ۤɡ�"ma02_014a.nss"
//�ष��c�֤η���������"ma02_014b.nss"
//���ˤϴ���������"ma02_014c.nss"

	if(#ħ�������==true){SetChoice03("ԭ�����","����˵��ָ��ӡ���","��������˵���Ǵ�����");}
	else{SetChoice02("ԭ�����","����˵��ָ��ӡ���");}
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

		if(#ħ�������==true){
		case @�x�k֫��{ChoiceA03();$GameName = "ma02_014a.nss";}
		case @�x�k֫��{ChoiceB03();$GameName = "ma02_014b.nss";}
		case @�x�k֫��{ChoiceC03();$GameName = "ma02_014c.nss";}
		}else{
		case @�x�k֫��{ChoiceA02();$GameName = "ma02_014a.nss";}
		case @�x�k֫��{ChoiceB02();$GameName = "ma02_014b.nss";}
		}
	}
}

