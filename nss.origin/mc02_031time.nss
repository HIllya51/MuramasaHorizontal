//<continuation number="190">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mc02_031time.nss_MAIN
{

	if($Next_GameName == "mc02_031rouka2.nss"){
			$�w�д����� = "bg082_�w�д�����_01a.jpg";
			$�w�д����� = "cg/bg/" + $�w�д�����;
	}else if($Next_GameName == "mc02_031daidokoro.nss"){
			$�w�д����� = "bg080_�w�д�����Ac_01a.jpg";
			$�w�д����� = "cg/bg/" + $�w�д�����;
	}else if($Next_GameName == "mc02_031innsyoku.nss"){
			$�w�д����� = "bg080_�w�д�����Ab_01a.jpg";
			$�w�д����� = "cg/bg/" + $�w�д�����;
	}else if($Next_GameName == "mc02_031innsyokuz.nss"){
			$�w�д����� = "bg080_�w�д�����Ab_01a.jpg";
			$�w�д����� = "cg/bg/" + $�w�д�����;
	}else if($Next_GameName == "mc02_031rouka1.nss"){
			$�w�д����� = "bg082_�w�д�����_01a.jpg";
			$�w�д����� = "cg/bg/" + $�w�д�����;
	}else if($Next_GameName == "mc02_031rouka3.nss"){
			$�w�д����� = "bg082_�w�д�����_01a.jpg";
			$�w�д����� = "cg/bg/" + $�w�д�����;
	}else if($Next_GameName == "mc02_031sennshitsu.nss"){
			$�w�д����� = "bg082_�w�д�����_01a.jpg";
			$�w�д����� = "cg/bg/" + $�w�д�����;
	}else if($Next_GameName == "mc02_031shikann.nss"){
			$�w�д����� = "bg080_�w�д�����Aa_01a.jpg";
			$�w�д����� = "cg/bg/" + $�w�д�����;
	}else if($Next_GameName == "mc02_031souko1.nss"){
			$�w�д����� = "bg081_�w�д�����Bc_01.jpg";
			$�w�д����� = "cg/bg/" + $�w�д�����;
	}else if($Next_GameName == "mc02_031souko2.nss"){
			$�w�д����� = "bg081_�w�д�����Bb_01b.jpg";
			$�w�д����� = "cg/bg/" + $�w�д�����;
	}else if($Next_GameName == "mc02_031souko2aa.nss"){
			$�w�д����� = "bg081_�w�д�����Bb_01b.jpg";
			$�w�д����� = "cg/bg/" + $�w�д�����;
	}else if($Next_GameName == "mc02_031souko2ab.nss"){
			$�w�д����� = "bg081_�w�д�����Bb_01b.jpg";
			$�w�д����� = "cg/bg/" + $�w�д�����;
	}else if($Next_GameName == "mc02_031souko2b.nss"){
			$�w�д����� = "bg081_�w�д�����Bb_01b.jpg";
			$�w�д����� = "cg/bg/" + $�w�д�����;
	}else if($Next_GameName == "mc02_031souko2c.nss"){
			$�w�д����� = "bg081_�w�д�����Bb_01b.jpg";
			$�w�д����� = "cg/bg/" + $�w�д�����;
	}else if($Next_GameName == "mc02_031syokuryou.nss"){
			$�w�д����� = "bg081_�w�д�����Ba_01b.jpg";
			$�w�д����� = "cg/bg/" + $�w�д�����;
	}else if($Next_GameName == "mc02_031tennbou.nss"){
			$�w�д����� = "bg083_�w�д��Ჿչ����_01.jpg";
			$�w�д����� = "cg/bg/" + $�w�д�����;
	}else{
			$�w�д����� = "ev119_һ��������֦��ˮԡ_a.jpg";
			$�w�д����� = "cg/ev/" + $�w�д�����;
	}
	mc02_SearchTime();
	$MainGameName="@->"+$GameName;
	GameMainSet();
	call_scene $MainGameName;
	GameMainSet2();

	//�����٥�ȣã�
	#���٥�ȥե�������=true;

	//����`�ȥե饰���x�k֫���Τ�GameName
	$PreGameName = $GameName;

//���ߕr����֤ˤʤä������륤�٥��
//���˕r���֤ˤʤä����񥿥��ॢ�å�

	if($mc02_TimeCount==18){$GameName = $Next_GameName;}
	else if($mc02_TimeCount>=60){$GameName = "mc02_031gameover.nss";}
	else{$GameName = $Next_GameName;}

}

scene mc02_031time.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();



..//������ָ��
//ǰ�ե����롡

	PrintBG("�ϱ���", 30000);

//�룺�ǥХå���
//	CreateTextureSP("�}����100", 100, Center, Middle, $�w�д�����);

	CreateColorSP("�}ɫ100", 1500, "Black");

	DrawDelete("�ϱ���", 1000, 100, "blind_01_00_1", true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
//��r�g����
//���Ƅ�һ�ؤˤĤ������뤬�U�^����
//���ƄӤ��뚰�˕r�g��ʾ���Ф�

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
��
������������<VALUE name=$mc02_ʱ��>

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

/*
//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
��
���������������������磿ʱ�����֣�����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	DrawDelete("�ϱ���", 500, 1000, "blind_01_00_1", true);

*/

//���ߕr����֤ˤʤä������륤�٥��
//���˕r���֤ˤʤä����񥿥��ॢ�å�


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
.//���륤�٥��
//��Ş��
//�������


if($mc02_TimeCount==18){

	PrintBG("�ϱ���", 30000);
	SoundPlay("@mbgm21",0,1000,true);

	CreateColorSP("�}ɫ100", 10000, "Black");
	CreateTextureSP("�}����100", 1000, Center, Middle, "cg/bg/bg084_�w�д�Ş��_01.jpg");

	Fade("@boxC*", 0, 0, null, true);
	Fade("@boxR*", 0, 0, null, true);
	Fade("@boxL*", 0, 0, null, true);

	Delete("�ϱ���");
	FadeDelete("�}ɫ100", 1000, true);

	SetNwH("cg/fw/ny����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
//������㣯�����١�
<voice name="����㣯������" class="����������" src="voice/mc02/031ti0010e142">
����ũ��������

{	FwH("cg/fw/fw����Υ�_ͨ��a.png");}
//������Υ�
<voice name="����Υ�" class="����Υ�" src="voice/mc02/031ti0020b03">
����ô���£���

{	NwH("cg/fw/ny����.png");}
//������㣯�����١�
<voice name="����㣯������" class="����������" src="voice/mc02/031ti0030e142">
����λ�ں󲿵Ĳֿ⡣
�������ӵ����Ǵ��������ǽ�ڣ�����
���ڵģ���

{	FwH("cg/fw/fw����Υ�_ͨ��a.png");}
//������Υ�
<voice name="����Υ�" class="����Υ�" src="voice/mc02/031ti0040b03">
����Ȼ����������
����������������ʲô�ˣ�
�����ֹؼ�ʱ�̡���

{	NwH("cg/fw/ny����.png");}
//������㣯�����١�
<voice name="����㣯������" class="����������" src="voice/mc02/031ti0050e142">
���������޵��ˡ���

{	FwH("cg/fw/fw����Υ�_ͨ��a.png");}
//������Υ�
<voice name="����Υ�" class="����Υ�" src="voice/mc02/031ti0060b03">
��ֻ��һ������
������Ҳ���Ǿ��޿��ܰɡ���

{	FwH("cg/fw/fw����Υ�_ͨ��b.png");}
//������Υ�
<voice name="����Υ�" class="����Υ�" src="voice/mc02/031ti0070b03">
������Ҫ���ǣ����ǿ��ܻ�ȥ�ĵط���
��������<RUBY text="����">����</RUBY>�ɡ�������

{	NwH("cg/fw/ny����.png");}
//������㣯�����١�
<voice name="����㣯������" class="����������" src="voice/mc02/031ti0080e142">
������������ָʾ����

{	FwH("cg/fw/fw����Υ�_ͨ��a.png");}
//������Υ�
<voice name="����Υ�" class="����Υ�" src="voice/mc02/031ti0090b03">
��������

{	NwH("cg/fw/ny����.png");}
//������㣯�����١�
<voice name="����㣯������" class="����������" src="voice/mc02/031ti0100e142">
��Ҫ�����ǲ��Ԯ�𣿡�

{	FwH("cg/fw/fw����Υ�_ͨ��a.png");}
//������Υ�
<voice name="����Υ�" class="����Υ�" src="voice/mc02/031ti0110b03">
������������

{	FwH("cg/fw/fw����Υ�_ͨ��a.png");}
//������Υ�
<voice name="����Υ�" class="����Υ�" src="voice/mc02/031ti0120b03">
�����ڸϿ�Ͷ��׼����
���ѽ��ڵı����������ڷ����ϡ���

{	FwH("cg/fw/fw����Υ�_ͨ��a.png");}
//������Υ�
<voice name="����Υ�" class="����Υ�" src="voice/mc02/031ti0130b03">
��ֻҪ����λѹ�������߾Ϳ����ˡ�
����ֱ�ӹ�ȥ����

{	NwH("cg/fw/ny����.png");}
//������㣯�����١�
<voice name="����㣯������" class="����������" src="voice/mc02/031ti0140e142">
���˽⣡��

</PRE>
	SetTextEXH();
	TypeBeginHIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateColorEX("�}ɫ�\", 5000, "#000000");
	Fade("�}ɫ�\", 1000, 1000, null, true);


}else if($mc02_TimeCount>=60){


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
.//�񥿥��ॢ�å�

//���h���������鷺���˓e��
	SetVolume("@mbgm*", 100, 0, null);
	CreateSE("SE01","se���L_�Ɖ�_���k03");
	MusicStart("SE01",0,300,0,1000,null,false);

	CreateTextureSP("�}����100", 100, Center, Middle, $�w�д�����);

	CreatePlainEX("�}��д", 5000);

	Fade("�}��д", 0, 500, null, true);
	Shake("�}��д", 1000, 0, 4, 0, 0, 1000, Dxl2, true);

	SetFwC("cg/fw/fw����_�@��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
//��������
<voice name="����" class="����" src="voice/mc02/031ti0150a00">
�������ղ����ǡ�����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
����ңԶ����ȴ�ֺ�<RUBY text="��">��</RUBY>�ı�ը����
�����¹�ģ�Ӵ��ޱȡ�

�������ѵ���

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050]
//��������
<voice name="����" class="����" src="voice/mc02/031ti0160a00">
���ѵ�����

{//�룺�������ʤΤǡ�һ�r�Ĥˤ��������˱�
	NwC("cg/fw/nw������.png");}
//������Υ�
<voice name="����Υ�" class="����Υ�" src="voice/mc02/031ti0170b03">
��û����˵���ˡ�
��������������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���ʤ�ᘤȤ��̤��줿��
//���ۥ磻�ȥ����ȡ����줿����
//���ե��`�ɥ�����

	CreatePlainEX("�}��д", 5000);
	OnSE("se���L_����_���̤���04",1000);
	FadeFR2("�}��д",0,500,300,@0,@0,30,Dxl2, true);

	WaitKey(1000);

	OnSE("se����_�n��_ܞ��03",1000);
	Shake("�}��д", 300, 0, 10, 0, 0, 1000, Dxl2, false);

	CreateColorEX("�}ɫ��", 10000, "#FFFFFF");
	Fade("�}ɫ��", 3000, 1000, null, false);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0060]
�������Ҷ�ʱ�Ȼ���ҡ�
��
�����˲������Ϯ������䣬������
�κεֿ���

����ʲô������������ҵĲ��������ޱȼ���
����Ұ��ʼѣ�Ρ�

��<RUBY text="������������������">�ȷ�Ӧ�����Ѿ�ɥ��</RUBY>��
���������ŵ���ʶ֮�У���Ϥ������ԶԶ������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����Υ�_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0070]
//������Υ�
<voice name="����Υ�" class="����Υ�" src="voice/mc02/031ti0180b03">
����Ȼ��֪������˵���ֻ�������α�ƶ��ѡ���
���������µ��������Ҳ������Լ���α����
Ҳ�޼����¡�����������˵�ɡ���

{	FwC("cg/fw/fw����Υ�_ͨ��a.png");}
//������Υ�
<voice name="����Υ�" class="����Υ�" src="voice/mc02/031ti0190b03">
���Բ��𣬴���ˡ�
���������У������ˣ��ն�������
��Ͱ�Ȼ�س�˯�ɡ���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	ClearWaitAll(3000, 2000);


//�����񥲩`�४�`�Щ`

..//������ָ��
//�Υե����롡"mc02_032gameover.nss"

}


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
.//������



}


