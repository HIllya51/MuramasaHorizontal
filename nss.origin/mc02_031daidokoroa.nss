
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mc02_031daidokoroa.nss_MAIN
{

//�룺�ǥХå��ե饰
//	$����֦����_Flag=true;
//	$�����_Flag=true;

//�룺���ϛQ��������
	$���ϛQ�� = Random(101)+1;
	$������ǰ = "��";

	if($���ϛQ�� <= 8){$����_Flag=true;$������ǰ="����";}
	else if($���ϛQ�� <= 16){$ţ��_Flag=true;$������ǰ="ţ��";}
	else if($���ϛQ�� <= 24){$����_Flag=true;$������ǰ="����";}
	else if($���ϛQ�� <= 32){$¹��_Flag=true;$������ǰ="¹��";}
	else if($���ϛQ�� <= 40){$����_Flag=true;$������ǰ="����";}
	else if($���ϛQ�� <= 48){$�R��_Flag=true;$������ǰ="����";}
	else if($���ϛQ�� <= 56){$�~��_Flag=true;$������ǰ="����";}
	else if($���ϛQ�� <= 64){$����_Flag=true;$������ǰ="з��";}
	else if($���ϛQ�� <= 72){$����_Flag=true;$������ǰ="ˮ��";}
	else if($���ϛQ�� <= 80){$Ұ��_Flag=true;$������ǰ="�߲�";}
	else if($���ϛQ�� <= 88){$����_Flag=true;$������ǰ="����";}
	else if($���ϛQ�� <= 94){$��������_Flag=true;$������ǰ="˫������";}
	else if($���ϛQ�� <= 98){$������ȥ����祦_Flag=true;$������ǰ="�����������";}
	else if($���ϛQ�� <= 102){$�ӥ�`���`_Flag=true;$������ǰ="���ǻ�����";}

		$MainGameName="@->"+$GameName;
		GameMainSet();
		call_scene $MainGameName;
		GameMainSet2();

	//�����٥�ȣã�
	#���٥�ȥե�������=true;

	//����`�ȥե饰���x�k֫���Τ�GameName
	$PreGameName = $GameName;

	if($����֦����_Flag==true && $�����_Flag==true){
//���ե饰��᪣��ǥХå��Τ����x�k֫�ˤ��Ƥ���ޤ�
		$SelectGameName="@->"+$GameName+"_SELECT";
		call_scene $SelectGameName;
	}else{
		$GameName = "mc02_031daidokoroab.nss";
	}

}

scene mc02_031daidokoroa.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

	CreateSE("SE01","se�ճ�_����_���_��01");
	MusicStart("SE01",0,1000,0,700,null,false);
	WaitKey(500);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0001]
�������ʵ�<VALUE name=$������ǰ>��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


..//������ָ��
//ǰ�ե����롡"mc02_031daidokoro.nss"


//�����i��
//��������Ҫ�ؤǷ��

//��������

	PrintBG("�ϱ���", 30000);
	CreateTextureSP("�}����100", 100, Center, Middle, "cg/bg/bg080_�w�д�����Ac_01a.jpg");
	SoundPlay("@mbgm21",0,1000,true);

	Delete("�ϱ���");


.//��������Ƥ��룫����֦����
//������֦����_Flag�������_Flag�����ˤ������

if($����֦����_Flag==true && $�����_Flag==true){

	SetFwC("cg/fw/fw����֦_Ц�.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0150]
//������֦��
<voice name="����֦" class="����֦" src="voice/mc02/031da0010a03">
�������е���ˡ���

{	FwC("cg/fw/fw����_���.png");}
//�����衿
<voice name="����" class="����" src="voice/mc02/031da0020a04">
�����˵����ֻ����æ���緹�������ˡ�
��ɴ��ʧְ������

{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/mc02/031da0030a00">
���Ǻã��򵥵�����ʲô�ɣ���

{	FwC("cg/fw/fw����֦_ͨ��a.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc02/031da0040a03">
����ѽ���������˻������𣿡�

{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/mc02/031da0050a00">
������Щ�򵥵ġ���

{	FwC("cg/fw/fw����_�դ�.png");}
//�����衿
<voice name="����" class="����" src="voice/mc02/031da0060a04">
���������������������������
����С�㣬������ɺ���ɣ���

{	FwC("cg/fw/fw����֦_ͨ��a.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc02/031da0070a03">
���ð�����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

}

//���x�k��������������
//���ե饰�����ʤ����Ϥ������ʤ���

..//������ָ��
//�������롡"mc02_031daidokoroaa.nss"
//�������ʤ���"mc02_031daidokoroab.nss"


}



//���x�k֫���`��
scene mc02_031daidokoroa.nss_SELECT
{
//���x�k֫ǰ���x
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

//��ǰ��״�B���x
	PrintGO("������", 30000);
	SoundPlay("@mbgm21",0,1000,true);

	OnBG(100,"bg080_�w�д�����Ac_01a.jpg");
	FadeBG(0,true);

	FadeDelete("������", 0, true);


//���x�k֫
	SetChoice02("����","������");
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
//��������"mc02_031daidokoroaa.nss"
				$GameName = "mc02_031daidokoroaa.nss";
		}
		case @�x�k֫��
		{
			ChoiceB02();
//����������"mc02_031daidokoroab.nss"
				$GameName = "mc02_031daidokoroab.nss";
		}
	}
}




//�룺�����ˤ��˱�
/*

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
//������_Flag
�������ʵ����⡣

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D



//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
//��ţ��_Flag
�������ʵ�ţ�⡣

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
//������_Flag
�������ʵ����⡣

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
//��¹��_Flag
�������ʵ�¹�⡣

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050]
//����_Flag
�������ʵ����⡣

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0060]
//���R��_Flag
�������ʵ����⡣

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0070]
//���~��_Flag
�������ʵ����⡣

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0080]
//������_Flag
�������ʵ�з�⡣

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0090]
//������_Flag
�������ʵ�ˮ����

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0100]
//��Ұ��_Flag
�������ʵ��߲ˡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0110]
//������_Flag
�������ʵ����⡣

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0120]
//����������_Flag
�������ʵ�˫�����⡣

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0130]
//������ȥ����祦_Flag
�������ʵ�����������⡣

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0140]
//���ӥ�`���`_Flag
�������ʵİ��ǻ����⡣

</PRE>
	SetTextEXC();
	TypeBeginCI();//?????????????????????????????

*/
