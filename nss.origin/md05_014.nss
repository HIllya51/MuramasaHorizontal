//<continuation number="170">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md05_014.nss_MAIN
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
	#bg003_�Ĥ�Ұ_01=true;

	//����`�ȥե饰���x�k֫���Τ�GameName
	$PreGameName = $GameName;

	$SelectGameName="@->"+$GameName+"_SELECT";
	call_scene $SelectGameName;

}

scene md05_014.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();



..//������ָ��
//ǰ�ե����롡"md05_013a.nss"


//����ԭ��bg003a

	PrintBG("�ϱ���", 30000);
	CreateColorSP("��", 5000, "WHITE");

	OnBG(100, "bg003_�Ĥ�Ұ_03.jpg");
	FadeBG(0, true);
	CreateTextureEXadd("��", 110, @0, @0, "cg/ef/ef046_��a.jpg");
	Fade("��", 0, 1000, null, true);
	Zoom("��", 0, 1100, 1100, null, true);

	DrawEffect("��", 50, "MiddleWave", 30, 30, null);

	CreateSE("SE�����", "se����_����_ȼ����K��_L");
	MusicStart("SE�����", 3000, 1000, 0, 1000,null, true);

	CreateMovie("���ӻ�", 300, 256, 278, true, true, "dx/mvk100.ngs");
	SetAlias("���ӻ�","���ӻ�");
	Zoom("���ӻ�", 0, 3000, 6000, null, true);
	Request("���ӻ�", SubRender);
	Move("���ӻ�", 0, @0, @-400, null, true);

	CreateTextureEX("��`���ݳ�", 4500, @0, @0, "cg/bg/bg003_�Ĥ�Ұ_03.jpg");
	Zoom("��`���ݳ�", 0, 1500, 1500, null, true);
	DrawEffect("��`���ݳ�", 50, "SuperWave", 0, 500, null);
	Fade("��`���ݳ�", 0, 500, null, true);

	Delete("�ϱ���");

	FadeDelete("��",1500,true);

	Fade("��`���ݳ�", 1000, 0, null, true);
	Delete("��`���ݳ�");

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
//��������
<voice name="����" class="����" src="voice/md05/0140010a00">
��������

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/md05/0140020a01">
��������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
����Ȼɥʧ��һ�б����������ԡ�

��ȼ�ա�
�����ܣ���ʼ����ȼ�ա�

�����ǡ�����Ұ�����롣
�����޶����̤ɳ�������ٲ����������ڡ�
��Ϊ���ֵ��ǲ�Ҷ����ľ��

��������������������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D



	SetFwC("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
//��������
<voice name="����" class="��������" src="voice/md05/0140030a01">
�����ǡ���ʲô����

//��������
<voice name="����" class="��������" src="voice/md05/0140040a01">
��������ĵ���������

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md05/0140050a00">
���������ص��׶��𡣡�

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
���Ǹ�����������ک��Ļ��������

  ������˵���Ǹ����֣�������Ժ��������ĵ���
��˵������ָ�ң�Ҳ�����¡�

��ֻҪ��ʵ�ظ����Ӿ��鱨�����ۣ���ɡ�

��ȼ�յ����ˡ�
����������ˡ��ˡ��ˡ�

�����ֺ��Ա𶼲��ö�֪�����������ս�̿����
���Ǳ�����ԭ�Σ�����ȷ�������ࡣ
���Ǹ��к�������������������̬��

���ҹ�����������ڻ������ʬ�С�
����װ�װ���ס���ң�ƾ�Ÿе��ھε���ǿ��
�����Ż�������͡�

����������⾰��ʲô�ء�

�������ǻ��֣��Լ����ҵ���������
��������ȷʵ��ˡ��������Ļ��ɻ�˼������ֹ����

��Ϊ���ڴ˴�������˶����������ء�
�����������ӿ���

�������ǣ��޷�������
������Ϊ�Σ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050]
//��������
<voice name="����" class="��������" src="voice/md05/0140060a01">
����Щ���ǡ���Ϻ�ġ�����

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md05/0140070a00">
��������֪���𣿡�

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/md05/0140080a01">
���š������ǡ�
����ţ���ң����ҵ�ͬ�塭����

//��������
<voice name="����" class="��������" src="voice/md05/0140090a01">
���������ǣ���Щ��ͬ��������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0060]
����Щ��ͬ��
����Ϻ�ġ�����

���������Ϻ�����塪����Ϻ����
��
����ô���ţ���������£�ֲ���ƺ������Ǵ�͵ġ�
�Ͻӽ�ŷ�ޡ�

����Ϻ�ġ�ŷ�ޡ�����������
�������ƺ���ʲô��������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_�@��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0070]
//��������
<voice name="����" class="����" src="voice/md05/0140100a00">
��!!��

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0080]
��˼ά�޷�����ֹͣ��
����Ұ�Ƕˣ�����ҡҷ�ı˶ˡ���<k>��һ˲�䣬
��������Ӱ��

������˵��<RUBY text="��������">��վ����</RUBY>��
�����������ţ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//��Ӥ�����

	OnSE("se����_����_һ�i", 1000);


	SetFwC("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0090]
//��������
<voice name="����" class="��������" src="voice/md05/0140110a01">
���ȵȣ���������

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md05/0140120a00">
��ʲô?!��

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0100]
��������ȹ�ͷ������ʲô����

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0110]
//��������
<voice name="����" class="��������" src="voice/md05/0140130a01">
����Ҫ����״����
�����ﲻ�����ǵ����簡����

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md05/0140140a00">
������������

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/md05/0140150a01">
��Ҫ�Ǻ�����������ǣ����
���޷��ص�ԭ����ʱ�ա�
������Ҳ���𣿡�

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0120]
�������ԣ�û��

��ֱ������������֮ǰ��һ��Ҫ������Χ�ĸ��档
����Ȼ�����ڻ��а����ȴ�����ֻҪ�н��е��ػ���
�п��ܡ�

�����������ж���
���ο���Ҫ�������������˸��ǲ����ܡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_������.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0130]
//��������
<voice name="����" class="����" src="voice/md05/0140160a00">
����������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0140]
����ͣ�½Ų�������Ӱ����������
�������ٴδ���ҡҷ�����˵���̬��¶������ǰ��

��СС�����塣����͸����ѩ�׼����������Ķ��䡪��
���ƺ��ж϶��ˡ�������Ψһ�������߾߱��˰�Ϻ�ĵ�
������

��<RUBY text="��">��</RUBY>�ƺ�ûע�⵽�ҡ�
����һ��ãȻ�����ߴ�������������Ļ������С�

����������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_�@��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0150]
//��������
<voice name="����" class="����" src="voice/md05/0140170a00">
�����ǡ�����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0160]
����������Ů�Ե�ͬʱ�����������һ�֡�
������ʶ����������������һ��֮Ե��

���ں�亻��ء�
���ֶ�����ںͲ������ܸ��ҵġ��������׵���

���ն������Ů��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//����Ů
	StC(1000, @0, @0, "cg/st/st����׏�_ͨ��_˽��.png");
	FadeStC(500, true);

	Wait(500);

	SoundPlay("@mbgm02", 0, 1000, true);


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0170]
��Ϊ���ڴ˴���

�������������ԡ�
������Ӧ���������ʵģ��������û�н����Ե����š�

�����Բ�ȥ������
����Ŀ��Լ���������

�������ף��Ҷ���һ����֪��
���Ƿ�����Ƕ����׏���һ���֣������Ҳ�޴�ȷ�ϡ�

�������Լ������ȡ�����ȫû������ô��ĸ��ݡ�

��ֻ�������ۼ�Ϊʵ�ľ���
����Ϻ����Ů�����������ɼ�����ȥ��

�����Բ�ȥ������

�����ְ����Ļ����һ��޷��ص�ԭ����ʱ�ա�
�����Ǹ����磬��û��������ֹ���񡱡���
��󣬻�ʧȥ���ٶ����ء�

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetVolume("SE�����", 2000, 0, null);

	CreateColorEX("�}ɫ100", 15000, "BLACK");
	Fade("�}ɫ100", 500, 1000, null, true);

	Delete("��");
	Delete("���ӻ�");

	DeleteStC(0,true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0180]
//������һ�С������֤�
�������뿴��

</PRE>
	SetTextEXCColor("RED");
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0190]
��һ�����磬��һ������
����˭�����ģ�ǰ�߸���Ҫ�أ�

���˿̣����������ȱ���Σ����������ʲô��

����������������������Ϊ�ɡ�����

����ô�죿

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//���x�k����Ů�������룯�����ʤ�

}

..//������ָ��
//����Ů�������롡"md05_014a.nss"
//�������ʤ���"md05_014b.nss"



//���x�k֫���`��
scene md05_014.nss_SELECT
{
//���x�k֫ǰ���x
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

//��ǰ��״�B���x
	PrintGO("������", 30000);
	SoundPlay("@mbgm02",0,1000,true);

	CreateColorSP("�}ɫ100", 1500, "BLACK");

	OnBG(100,"bg003_�Ĥ�Ұ_03.jpg");
	FadeBG(0,true);

	FadeDelete("������", 0, true);


//���x�k֫
	SetChoice02("������Ů","������");
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
//����Ů�������롡"md05_014a.nss"
				$GameName = "md05_014a.nss";
		}
		case @�x�k֫��
		{
			ChoiceB02();
//�������ʤ���"md05_014b.nss"
				$GameName = "md05_014b.nss";
		}
	}
}