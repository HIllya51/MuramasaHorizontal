//<continuation number="260">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene ma03_020.nss_MAIN
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

//	$ħ������� = true;

	//����`�ȥե饰���x�k֫���Τ�GameName

	if(#ħ�������){
		$SelectGameName="@->"+$GameName+"_SELECT";
		call_scene $SelectGameName;
	}else{
		$PreGameName = $GameName;
		$GameName = "ma03_020b.nss";
	}

}

scene ma03_020.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

..//������ָ��
//ǰ�ե����롡"ma03_019.nss"

//��ͨ·
	PrintBG("�ϱ���", 30000);
	CreateColorSP("�}��ܞ", 15000, "#000000");
	OnBG(100,"bg036_������ͨ·_01.jpg");
	FadeBG(0,true);
	Delete("�ϱ���");
	DrawDelete("�}��ܞ", 1000, 100, "blind_01_00_1", true);

	SoundPlay("@mbgm30",0,1000,true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
�������˽��������С���Ƴ�������������Ҳ��
����������Ⱦ��
������ǰ�����ͻ������������֨ѽ֨ѽ������������
���в��������Ļ���ֱ�ǳ��ֵļ��¡�

�����������е�ά�������ְ����ҹ�����ް�����
��ά�޹�ͨ���ﵩ�ػӶ��������������������������
��״̬����ѡ�־Ͱ������ǵ���������˯��

�����ⳡû��ָ�ӵ�����������У����Ƴ���������ô
һ��������ֻ���������е�һ��������ˡ�
�����ø����˴������ţ��������ҡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	StL(1000, @0, @0,"cg/st/stһ��_ͨ��_�Ʒ�.png");
	FadeStL(300,false);

	SetFwC("cg/fw/fwһ��_Ц�a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
//��һ����
<voice name="һ��" class="һ��" src="voice/ma03/0200010a02">
���ռ��˺ܶණ���ء���

{	FwC("cg/fw/fw����_Ц�a.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0200020a00">
��Խ��������ǰ�Ķ����Խ�Ǵ��ء�
�����Ǻ��в���������Ҳ�ܷḻ����

{	StR(1000, @0, @0,"cg/st/st����֦_ͨ��_˽��c.png");
	FadeStR(300,false);
	FwC("cg/fw/fw����֦_ͨ��b.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma03/0200030a03">
��������ˣ�Ӧ��Ҳûʲô�ط�������������
ѩ����̿�ġ�
�������û�б����ǿ�����<RUBY text="����">����</RUBY>��������
������

{	FwC("cg/fw/fw����_ͨ��b.png");}
//�����衿
<voice name="����" class="����" src="voice/ma03/0200040a04">
�����������θ���Ҳʼ���ǻ����������Ҳ
ֻ�ܴﵽ��������ĳ̶ȡ�
���ټ��ϻ��������¹ʣ��������þ��䡣��

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	DeleteStA(300,false);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
����Ȼ���ᾯ�䡣
�������������Ȼ���޷������������Ƕ��ھ���ӵ���
��Ҳ�ٳ����ҵļƻ���

������Ҫ����Ҫ��������ȫ�޷����Ტ�۵���һ����Ҫ
��Ŀ�ľ���ȫû���ջ��ˡ�
��������������ʵҲ���Կ�����һ���ջ���Ȼ��ȫ��
ֵ�ø��ˡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
//��������
<voice name="����" class="��������" src="voice/ma03/0200050a01">
������������

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0200060a00">
��������һ�Բ�����ֻ�Ѳ�����������������
��̫�����ˣ�

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/ma03/0200070a01">
���Һܲ�������

{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0200080a00">
���Ҿ����Լ��������ûʲô���á�
������Ҫ�����𻵵�����Ϊ�ɣ��߷ø�������
�Ļ����չ����Ƕ�����㲿����

//��������
<voice name="����" class="����" src="voice/ma03/0200090a00">
���ô˻��ᣬ��Ǳ���ڻ�����̽����⡣ȷ��
һ��û�����������ı������
��Ӧ��û��ʲô���⡣��ʵ�ϣ������н�չ��

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050]
�����������ڣ�����û�ܷ��ּ����塣

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0060]
//��������
<voice name="����" class="��������" src="voice/ma03/0200100a01">
��û�����Ƿǳ���ɫ����ս����Ҳ��ô���á�
������������Ϊֹ�Ĳ��֡��ţ�������Ϊֹ����

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0200110a00">
��֮������ʲô�����ء�
�������ֻ�����ռ������㲿��������и�װ
�ˣ�

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/ma03/0200120a01">
���Ҿ��ǲ������!!��

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0070]
�������Ľ��д����������ҵĴ��ԡ�
��������Ұҡ����������ʶ���ģ�����ⲻͨ�������
����֮��Ľ��д����������͹���һ����

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����֦_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0080]
//������֦��
<voice name="����֦" class="����֦" src="voice/ma03/0200130a03">
������ô�ˣ���

{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0200140a00">
��û�¡���

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0200150a00">
������һ��˫�����𣿣�

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/ma03/0200160a01">
�����������֮ǰ��Ϊʲô�ұ���Ҫ����ɽկ
�������ӻ�Ҫȥ�μ�ʲô���ٱ�������
����ֻ������֮һ�Ļ��һ������̵ģ�Ϊʲô
���߶�Ҫ����!?��

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0200170a00">
��û��İ취�ˣ�

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	#av_�ۥåȥܥ��=true;

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0090]
�������Ҫ��ϯ����ľ�������Ҳ��Ϊ��Ҫ�ҳ�����Ǳ
���ڲμӾ����ľ����ý����еļ����壬������������
��˲����ֹ����
�����������װ�׻��Ļ��Ͱ첻���ˡ�

�����ǣ�����������ô����������У�������ȥ����
�Ǿ��Բ���ʵ�ġ������ͳ��˹�Ȼ���ƾ���ӵ�����Լ�
����װ��
�����Բ�Ҫ��װ��

�����ô�������ɫ�����Ͳ��Ǻͻ����ȫ������΢��
װһ�µĻ����Ϳ����ñ�����Ϊ�ǻ���ĸ�װ�档
�������Ļ������ٺò����ˡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0100]
//��������
<voice name="����" class="����" src="voice/ma03/0200180a00">
�����������𣿣�

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/ma03/0200190a01">
��������Ҫ�μӾ�������Щ�ˣ��Ҷ��Ѿ�ȫ��
�����˰ɣ�
�����м�û�м����塣��

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0200200a00">
�����������ñ�����֮����û�ܷ���Ŀ��
�Ļ�����������۾����ɱ�ס֮���û�б�Ľ�
���ˣ�

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/ma03/0200210a01">
��Ҳ���ǲ�������Ľ����ء���

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0200220a00">
���Ҳ����������ֿ����ԡ�
������˵�����Ǻ���ѡ��׷���������˲�����
���ǡ��ѡ��ģ�

//��������
<voice name="����" class="����" src="voice/ma03/0200230a00">
�����۳���ʲô���ɣ��Ҳ���������ѡ��һ��
������ʲô������ֻ�ǲ����������ߡ�
�����ǲ���ѡ�ֱȽ��п��ܣ�

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/ma03/0200240a01">
��������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0110]
�������ǳ�������������š�
���о��������Ͻ����˵������ϻ�����ͳһ��
����̸�۽��еĸ�����һ���ܿ�Ц�����顣

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0120]
//��������
<voice name="����" class="����" src="voice/ma03/0200250a00">
��������

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/ma03/0200260a01">
��������Ҫ˵�ú����ڽ�С����һ����
����ʹ���ĳ�˲���˵ȥ׼��һ�������ý���
���𣿡���ô�Ͱ��Ǹ���������ͺ��ˡ�����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0130]
�����������ֻ���˵�˳�����
����Ŷ����Լ���Ҫ�����ڱ����У��о��ǳ��Ĳ����
�ɡ�

��������Ȼ������ȫ������⡣
��Ҫ˵�Ļ����ͺ����ǽ�����ľͷ�����������ʹ��һ
����

�����ǡ���

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


}

//���x�k���m���z�࣯�a�餻��
//���Σ�090323������m���z���x�k֫�ϣ���`�ȥ��ꥢ��Τ�


..//������ָ��
//���ե饰��᪡��ե饰�����r�Τ��x�k֫���F��
//���m���z�ࡡ"ma03_020a.nss"
//���a�餻�롡"ma03_020b.nss"



//���x�k֫���`��
scene ma03_020.nss_SELECT
{
//���x�k֫ǰ���x
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

//��ǰ��״�B���x
	SoundPlay("@mbgm30",0,1000,true);
		Fade("@boxCT",$BoxFadeTime,0,null,false);
		Fade("@boxCC",$BoxFadeTime,0,null,true);

	PrintGO("������", 30000);


	OnBG(100,"bg036_������ͨ·_01.jpg");
	FadeBG(0,true);

	FadeDelete("������", 1000, true);

//���x�k֫
	SetChoice02("���д���","�ô�������");
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
//�m���z�ࡡ"ma03_020a.nss"
				$GameName = "ma03_020a.nss";
		}
		case @�x�k֫��
		{
			ChoiceB02();
//�a�餻�롡"ma03_020b.nss"
				$GameName = "ma03_020b.nss";
		}
	}
}

