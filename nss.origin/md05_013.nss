//<continuation number="60">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md05_013.nss_MAIN
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
	#bg058_�ҿ�b_01=true;
	#bg108_�Ĥ�񤦺�b_00=true;

	//����`�ȥե饰���x�k֫���Τ�GameName
	$PreGameName = $GameName;

	$SelectGameName="@->"+$GameName+"_SELECT";
	call_scene $SelectGameName;

}

scene md05_013.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();



..//������ָ��
//ǰ�ե����롡"md05_012b.nss"


//�����L�ꡣbg058b
//���Ĥ�BGM�ʤ��ˤ��Ƥ��ޤ��� inc�Ѿ�

	PrintBG("�ϱ���", 30000);
	CreateColorSP("��", 25000, "WHITE");

	OnBG(100, "bg058_�ҿ�c_01.jpg");
	FadeBG(0, true);

	CreateSE("���L", "se��Ȼ_�L_���L");
	MusicStart("���L", 0, 1000, 0, 1000, null,true);

	CreateTextureEX("��`���ݳ�", 4500, @0, @0, "cg/bg/bg058_�ҿ�c_01.jpg");
	Zoom("��`���ݳ�", 0, 1500, 1500, null, true);
	DrawEffect("��`���ݳ�", 50, "SuperWave", 0, 500, null);
	Fade("��`���ݳ�", 0, 500, null, true);

	Delete("�ϱ���");

	FadeDelete("��",1500,true);

	Fade("��`���ݳ�", 1000, 0, null, true);
	Delete("��`���ݳ�");



//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
����������
���ܼ�Ϯ������ˮ��ѹ������ͬɳ������

������������ͬ��Ҷ�ǰ㣬���ҷ��裬������֮��
�Ĳٿ��£�������Σ�յؿ��衣
������Ϊ������׺������������������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
//��������
<voice name="����" class="����" src="voice/md05/0130010a00">
��������ڱ��������𣡡�

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/md05/0130020a01">
�����Ҵ��һ�£���ɲ�����ѡ���Ŀ�꣡��

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
�����õı�Թ������ı�⣬�������۵��Һʹ�����
����ӹ���ɣ����Ǳ��������ϵ����ƣ�ӲҪ˵�Ļ���
ǡǡ�෴��

�������ٶ��ʱ�䣬������õ�ʱ�ռ䡣
�������У����پ�������ǵ���һ��ʱ�ռ䡣

�����г��˶�Ŀ�ĵص�������ʲôҲ���롣
����Ϊս��֮�������ߣ�����Ȼ����Ҳ�����ʴӡ�

����������ô����������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
//��������
<voice name="����" class="��������" src="voice/md05/0130030a01">
��������
��ι�����Ǹ�����

{	FwC("cg/fw/fw����_��ʹ.png");}
//��������
<voice name="����" class="����" src="voice/md05/0130040a00">
���·�����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//��������ݳ��������ǥ���⡢��Ŀ�α���������Ϻ���Ҋ���롢�ƥ������M��ʤ���У��ƴ󤭤�˴����ʾ�����Ф餯������ͨ����������ȫ����ʾ��

//��resize�������� inc�Ѿ�
	CreateColorSP("�\Ļ��", 25000, "#000000");
	DrawTransition("�\Ļ��", 300, 0, 1000, 100, null, "cg/data/slide_02_01_1.png", true);

	CreateTextureSP("��", 15000, @0, @0, "cg/bg/resize/bg108_�Ĥ�񤦺�b_00l.jpg");


	OnBG(100, "bg108_�Ĥ�񤦺�b_00.jpg");
	FadeBG(0, true);

	DrawTransition("�\Ļ��", 300, 1000, 0, 100, null, "cg/data/slide_02_01_0.png", true);
	Delete("�\Ļ��");
	Move("��", 10000, @-400, @-150, null, false);

	Wait(500);


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050]
����ĿԶ����
�����Ųŷ��֣��·����Ǵ󺣶���½�ء�

�������ϵĿ�ϯ�����ڿ��У�һ�Ҳ������͵Ĵ�
Ư���š�<k>
��
������������<k>{FadeDelete("��", 1000, false);}����

����ȷ�Ǵ���
������δ��������ģ���Ĵ���

�������˽���κδ���������Ϊ���¡��������Ƚ���
���졣
��
�����������ǣ�δ����?!

�����ŵĹų��ڵ��²������ڣ����ǹ�ȥ��
�������Ǵ����Ʋ⣬�˿ռ�ͬ�ҵ�ʱ����ȡ���
��ʱ�����ƽ���Լ���������ʮ������硣

��������ˣ�����á�
��������������δ��������������֤�ݡ���<k>���ǣ�
����ȷ���Ƿ���δ����Ҳ����Ծ����
<RUBY text="��������������">�޷������δ��</RUBY>��

����״�������ҵ���ⷶΧ��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0060]
//��������
<voice name="����" class="��������" src="voice/md05/0130050a01">
�����Ҵ�����Ҫ���ˣ���

{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/md05/0130060a00">
���ǰ��������ϡ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0070]
����Ȼ�����ر�Ĵ������˿̺��������졣
��ֻ�Ǳ��׺ݵĲ����������š�

��Ҫ��æ�ɣ��������ų������ѡ�
����ȷʵ�������������������

����Ӧ�ó��֡�
�����ʱ�յ����齻�����ʱ�յ���ȥ�����ֻ��
������ͷ����

�����ǣ�Ҳ�ܴ���һ����˼����

������˵�������ڱ������е�����Ҳ�ʹ���������š�
���ڵȴ��ڼ����ƿ��Ʋ�����Ҳ����׹�䡣

���������Ҵ��Ļ��������ܶ�ܷ���ɡ�
�����ߣ������������ʱ�ռ���������������
�����𡭡���

����ô����ô�졣

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetVolume("���L", 2000, 0, null);

//���x�k�����������ޤ룯���Ϥ˽����

}

..//������ָ��
//�����������ޤ롡"md05_013a.nss"
//�����Ϥ˽���롡"md05_013b.nss"



//���x�k֫���`��
scene md05_013.nss_SELECT
{
//���x�k֫ǰ���x
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

//��ǰ��״�B���x
	PrintGO("������", 30000);

	OnBG(100,"bg108_�Ĥ�񤦺�b_00.jpg");
	FadeBG(0,true);

	FadeDelete("������", 0, true);


//���x�k֫
	SetChoice02("��������","���䵽����");
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
//�����������ޤ롡"md05_013a.nss"
				$GameName = "md05_013a.nss";
		}
		case @�x�k֫��
		{
			ChoiceB02();
//�����Ϥ˽���롡"md05_013b.nss"
				$GameName = "md05_013b.nss";
		}
	}
}