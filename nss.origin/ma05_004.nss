//<continuation number="310">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene ma05_004.nss_MAIN
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
	#ev129_�kɽ�ȹ����ȴ�=true;
	#ev128_�����ι�_a01=true;
	#ev128_�����ι�_a03=true;
	#ev128_�����ι�_c03=true;
	#ev128_�����ι�_b03=true;

	//����`�ȥե饰���x�k֫���Τ�GameName
	$PreGameName = $GameName;

	$GameName = "ma05_005.nss";

}

scene ma05_004.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

..//������ָ��
//ǰ�ե����롡"ma05_003.nss"

//���F�g
	PrintBG("�ϱ���", 30000);
	CreateColorSP("�}��ܞ", 15000, "#000000");
	OnBG(100,"bg051_�����Ҿ��g_03a.jpg");
	FadeBG(0,true);
	Delete("�ϱ���");
	WaitKey(1000);

	SetFwC("cg/fw/fw�y_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
//���y��
<voice name="�y" class="�y" src="voice/ma05/0040010b46">
�������ţ�
����ô�ˣ���������

{	SoundPlay("@mbgm23",2000,1000,true);
	FadeDelete("�}��ܞ", 1000, false);
	FwC("cg/fw/fw����_�^ȥ.png");}
//��������
<voice name="����" class="����" src="voice/ma05/0040020a00">
��������
��ûʲô����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
���һع�������
��żȻ�������ƺ����ҵ�����Ʈ����������

�������Ĳ����ߣ�ֻ���Һ���ĸ���ˡ�
��<RUBY text="��">��</RUBY>������ʵ��

��ֻҪ�ټ�һ�ˡ����ͻᶸȻ���ַǷ���
��������������Զȥ��
����ֻ�����ڹ�ȥ�����硣

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw�y_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
//���y��
<voice name="�y" class="�y" src="voice/ma05/0040030b46">
��������

{	FwC("cg/fw/fw����_�^ȥ.png");}
//��������
<voice name="����" class="����" src="voice/ma05/0040040a00">
��������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
��û��ʲôҪ�ر�̸�ġ�ֻ�ǳ�Ĭ�س��ŷ���
��һ��ǰ�����տ�ʼ���������ò�״̬ʱ������������
�ġ�

��������ĸ��ʮ�������������������ܵļž���ƴ��Ѱ
�һ��⣬�ੲ��ݵ�˵����ͣ��
��Ȼ����δ�����ܾá��跨�����Ĭ�Ŀ�������֮�У�
Ҫ��ᵽ��һ�㣬������Ҫ���Ѻܶ�ʱ�䡣

�������Ժ󣬾�һֱ������
���ž����ص÷·�Ҫ��ͷѹ�������ϣ���������������
��е�ؽ�����������С�

����Ī���޷�ƽ�������飬��ĸҲ����һ���ɡ�

����ݳ�Ĭʮ���������ᡣ
��Ȼ����ȴҲϣ����ݳ�Ĭ������ȥ��

��Ҳ���֮Ϊ���ɱ�����Щ̫���š�
���Գ�Ĭ�����ԶԶ����������ĸ���жԴ��Ƴ�Ĭ��
���е�����־塣

��������Ϊ����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�������`��
	SetVolume("SE*", 100, 0, null);
	SetVolume("@mbgm*", 300, 0, null);
	CreateSE("SE01","se�ճ�_��_ľ�䉲���01");//���ߩ`ע��
	MusicStart("SE01",0,1000,0,1000,null,false);

	$�Еr�g=RemainTime("SE01");
	WaitKey($�Еr�g);

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050]
//��������
<voice name="����" class="����" src="voice/ma05/0040050a00">
��!!��

{	FwC("cg/fw/fw�y_ͨ��b.png");}
//���y��
<voice name="�y" class="�y" src="voice/ma05/0040060b46">
��������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateColorSP("�}��ܞ", 5500, "#000000");
	DrawTransition("�}��ܞ", 300, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", false);


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0060]
�������������ű��߷ɵ�������<RUBY text="����������">�Ѿ����ߵ�</RUBY>������
�����������ͬʱ����վ�������˳�ȥ��


</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����ѩ`�󡣑����_������
//���ţ֣���ΰk��
	WaitAction("�}��ܞ", null);
	CreateTextureEX("�}��", 2200, Center, Middle, "cg/ev/ev128_�����ι�_c03.jpg");
	CreateTextureSP("�}�ţ�", 2100, Center, Middle, "cg/ev/ev128_�����ι�_c03.jpg");
	CreateSE("SE01","se�ճ�_����_���饤���_��02");
	MusicStart("SE01",0,1000,0,1000,null,false);
	DrawDelete("�}��ܞ", 300, 1000, "slide_01_01_1", true);

	SetFwL("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0070]
//��������
<voice name="����" class="����" src="voice/ma05/0040070a00">
���⡭������

{	NwL("cg/fw/nw��.png");}
//�����⣨�k���r����̨�~�υ��h��˼ӹ����ޤ�
//���⡿
<voice name="��" class="��" src="voice/ma05/0040080a14">
��֨��������������������������������

</PRE>
	SetTextEXL();
	TypeBeginLIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���ɤ���Ф���
//���k������ð���줿�⡤�k��״�B
	CreateSE("SE01","se����_�n��_ܞ��03");//���ߩ`ע��
	MusicStart("SE01",0,1000,0,1000,null,false);
	Fade("�}��", 0, 500, null, true);
	SetBlur("�}��", true, 3, 500, 100, false);
	FadeFR2("�}��",0,500,300,0,0,10,Dxl3, false);
	SoundPlay("@mbgm32",0,1000,true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0090]
�����ĺ�����·�ٻ�������һ���������������
������Ҳ�����ش����
��������ȥ��ס������

</PRE>
	SetTextEXL();
	TypeBeginLI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwL("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0100]
//��������
<voice name="����" class="����" src="voice/ma05/0040090a00">
���⡭��
�������ԣ���Ҫ�Ҷ���������

{	NwL("cg/fw/nw��.png");}
//���⡿
<voice name="��" class="��" src="voice/ma05/0040100a14">
��֨����������������������

</PRE>
	SetTextEXL();
	TypeBeginLIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0110]
�������ݶ���Ӳ���������ҵ�����������
��Ȼ���Ҿ���������ȫ��ѹ�ƶԷ���

�����ǿ�а�ס���Ļ�������Ĺ����������������޿�
��й������ֻ��ȫ�������õ��Լ����ϡ�
���������ڹ�������������Ҳ���ܲ��˵ġ�

��ȫ��Ĺ�ͷ���������
��һ�����ȴ������۵�������Ҫ���ס�

</PRE>
	SetTextEXL();
	TypeBeginLI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���ߤ��á����䤨�Τ���褦������
	CreateSE("SE01","se����_����_�����Ĥ�01");
	MusicStart("SE01",0,1000,0,1000,null,false);

	SetFwL("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0120]
//��������
<voice name="����" class="����" src="voice/ma05/0040110a00">
���⣬���У������ˣ�
���侲�����ɡ�����

{	FwL("cg/fw/fw����_ƣ��.png");}
//��������
<voice name="����" class="����" src="voice/ma05/0040120a00">
���⡭��
�������ˡ�����

</PRE>
	SetTextEXL();
	TypeBeginLIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0130]
����Ļش�����Ǻ�������Ĺ�����
������֪���ġ�

���ҵ������޷����ﵽ������С�

����ʹ�����Ҳ�޷�ֹͣ�Լ��ĺ�����
���·��������ᴫ�������һ�㣬�����������û���
���ҵ���������ͣ�غ���������

</PRE>
	SetTextEXL();
	TypeBeginLI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwL("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0140]
//��������
<voice name="����" class="����" src="voice/ma05/0040130a00">
���⡭��
���侲����������

{//���ɤ���Ф���
	CreateSE("SE01","se����_����_�������Ƥ�02");
	MusicStart("SE01",0,1000,0,1000,null,false);
	FadeFR2("�}��",0,500,300,0,0,20,Dxl3, false);
	FwL("cg/fw/fw�y_��˼.png");}
//���y��
<voice name="�y" class="�y" src="voice/ma05/0040140b46">
��������

</PRE>
	SetTextEXL();
	TypeBeginLIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0150]
��ĬĬ��������ĸ�����������¡�
���ٵ���ԭ������Ϊ�ղ�ȥ׼�����б��ŵĶ����ˡ�


{	OnSE("se����_����_���g��",1000);}
��������ˮ��ľͰ��
����ĸ������š�ɣ������Ķ�ͷ��

�����ں��ֱײ�Ĺ���˵����Ҳ���Ǽ����׵��¡�
����֪�ǲ�����Ϊ���ᣬ����ͣ�ζ����Դ�����<k>������
�ľ�ͷ����<k>�����յ���˫��������赲ס��


�����������϶����ĸ��ʪ��Ĳ������Ů�������ݡ�
�������ظ�Ħ���������أ�һ��һ��ء���Ŀ���ƽϢ
�������������ɵ�Щ΢�ľ��Ρ�

�������ڼ䣬������ĸû��˵��һ�仰��
�����ֶ������ޱ�Ҫ������������ֹ��Ѿ���ͬ������
�����������ļ��䡣

����һ��ǰ����
��ȷʵ�أ���Ϊÿ�յĹ�����

</PRE>
	SetTextEXL();
	TypeBeginLIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���kɽ�ȹ���
	PrintGO("�ϱ���", 5000);
	CreateColorSP("�}��ܞ", 2500, "#000000");
	CreateTextureSP("�}�ţ�", 1100, Center, Middle, "cg/ev/ev129_�kɽ�ȹ����ȴ�.jpg");
	FadeDelete("�ϱ���", 2000, true);
	WaitKey(1000);
	FadeDelete("�}��ܞ", 2000, true);


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0160]
��������������֮Ϊ���Ǵ��ĺ�����
������������һ����ɽ����һͬ�����Ľ����ӹ�������

���Ǳ���һ�е�Ԫ�ס�
��
��������Ȼ������δ���������ʵ���������ľ���ÿһ
�����Ѿ����ȷ���ˡ�

��ĳһ�죬����������˷����ˡ�

�����裬���ң�Ȼ�󱻳�������
����Ҳ�Լ��ͬ��̸�ۣ��������ǻ�����˺���֮�¡�

������󣬳������һ�ҷ����ˡ�

������һͷײ�������ذ��ϣ�ĸ�׳��ھ��ף�����ĺ�
����Ȼ�������ţ������ջ���ҧ�������
����Ҹп��ž�Ҳ���д˵�żȻ���׷����˱�а���¡�

��һ���º�
����һ����������˷����ˡ�

��������ڷ����ˡ�
���������Ǵ���������ˣ��ᷢ�����������

�����ǿ����ж���
��������ұ�����������������к����ʣ��ŷŵ�������
ȥ��������Ŀ��У���������˵�����������Ȼ���ж�
֢״������֣�����ȫ��

�����䲻�ҡ�������Ե��Ҳ���ò�˵����һ�����ˣ�
�����ڴ����δ�õ��о��Ŀ��¼���������������ϳ�
���ˡ�

����Χ�ĳ����ׯ�������¶���һƬ����ҡ�
���ӵ������㱴��ʳ��뵽��̬��չ���˵�ԭ�򣬴�
�ҳ�Ⱥ��ӵ�������������Ĵ���ȴ�����ţ�ֻ��ý�巢
����������������֮�ǡ���

��Ȼ�������Ļ���Ҳ�������Һ�ңԶ��
����Ϊ���ٽ����౩¶��ǰϦ����Ψһ�����ü�������
��Ʒ��������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//������
	PrintGO("�ϱ���", 5000);
	CreateColorSP("�}��ܞ", 2500, "#000000");
	CreateTextureSP("�}�ţ�", 1100, Center, Middle, "cg/ev/ev128_�����ι�_a03.jpg");
	FadeDelete("�ϱ���", 2000, true);
	WaitKey(1000);
	FadeDelete("�}��ܞ", 2000, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0170]
��֮�����������ӳ����š�
�����Դ�����ÿ�����ϾͿ�ʼ������Ȼ����취����
ƽϢ����˯�ţ�Ϊ���û�˽������л����


��������ˣ��ڶ������ϣ��������ǰһ�����ϸ�˥��
�����գ����̲�ס̾Ϣ��
��ÿһ�춼����ˡ�

�����ҽ�����������ҽ����
��Ȼ�����ֻ�ǣ������������֯���¸������ⳬ����
���ʹ��ʹ�þ�����ҡ������ǵó���ֻ�����֢״��
���۶��ѡ�

�������˵Ľ��۶�һ����

���������ǹ��ҵ�ҽ�������޲ߡ�
��Ҫ�������ҽ����������С����е߻����˹����ҽ��
�������ּ������ٴ�����Ҳ���һ�㡣

�������������ҽ������

</PRE>
	SetTextEXL();
	TypeBeginLI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwL("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0180]
//��������
<voice name="����" class="����" src="voice/ma05/0040150a00">
��������

</PRE>
	SetTextEXL();
	TypeBeginLIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0190]
������������δֹͣ�����Ĺ���죬�뵽��
�������������һ��Ļ���

��������
���϶��������ġ�

����Ǯ��Ȩ����
��Ϊ�˽�����������ҽ�����뵽���´��ڰ������֮�µ�
�������Ҫ�ġ���ֻҪ�������������Ļ���

��Ŀ�꣬���еġ�
��Ҳʱ��ʱ�ش�������

��Ȼ�������ǡ���
��ͬ���պ��޸ı䣬���յ�����������ˡ�

</PRE>
	SetTextEXL();
	TypeBeginLI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//������顣�h���Ǒ����_����
	CreateSE("SE01","se�ճ�_����_���饤���_��03");
	MusicStart("SE01",0,750,0,1000,null,false);

	SetFwL("cg/fw/fw����_�^ȥ.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0200]
//��������
<voice name="����" class="����" src="voice/ma05/0040160a00">
������ͳ���ˡ�
�������ʱ�䵽�ˡ���

{	FwL("cg/fw/fw�y_ͨ��b.png");}
//���y��
<voice name="�y" class="�y" src="voice/ma05/0040170b46">
���������š�
���ܲ��ܸĳ��´ΰ�������

{	FwL("cg/fw/fw�y_ͨ��a.png");}
//���y��
<voice name="�y" class="�y" src="voice/ma05/0040180b46">
���ֲ��Ƿǽ��첻�ɡ�����

{	FwL("cg/fw/fw����_�^ȥ.png");}
//��������
<voice name="����" class="����" src="voice/ma05/0040190a00">
��û��ϵ������״̬�Ļ���֮����һ����
�͹��ˡ�
��ͳ������ȥ��ϰɡ���

{	FwL("cg/fw/fw�y_ͨ��b.png");}
//���y��
<voice name="�y" class="�y" src="voice/ma05/0040200b46">
��������

{	FwL("cg/fw/fw����_�^ȥ.png");}
//��������
<voice name="����" class="����" src="voice/ma05/0040210a00">
���Ǳ�ҲӦ���ǽ��������⡣��

{	FwL("cg/fw/fw�y_ͨ��b.png");}
//���y��
<voice name="�y" class="�y" src="voice/ma05/0040220b46">
������������
����ѽ�����鷳����

{	FwL("cg/fw/fw�y_ͨ��a.png");}
//���y��
<voice name="�y" class="�y" src="voice/ma05/0040230b46">
����Ǹ�ˣ�������
����ô�Ͱ������ˡ���

{	FwL("cg/fw/fw����_Ц�a.png");}
//��������
<voice name="����" class="����" src="voice/ma05/0040240a00">
���ǡ���

</PRE>
	SetTextEXL();
	TypeBeginLIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�������SE��Ҫ��������Ȥ���餫��ϵ��ľ������¤�i�������Ȥ�Ȥ�Ȥ󡤡�����`�ס�
	CreateSE("SEL01","se����_����_ľ����ä���i��01_L");
	MusicStart("SEL01",0,1000,0,1000,null,true);
	SetVolume("SEL*", 10000, 0, null);


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0210]
����ĸ�����������ң�վ�����߳��˷��䡣
��Զȥ�ĽŲ����������ǳ

</PRE>
	SetTextEXL();
	TypeBeginLIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//��һ�Ȱ�ܞ
	ClearWaitAll(2000, 1000);

//������
	PrintBG("�ϱ���", 5000);
	CreateColorSP("�}��ܞ", 2500, "#000000");
	OnBG(100,"bg033_������һ��_03a.jpg");
	FadeBG(0,true);
	Delete("�ϱ���");
	FadeDelete("�}��ܞ", 2000, true);
	SoundPlay("@mbgm33",0,1000,true);

	SetFwC("cg/fw/fw����_������.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0220]
//��������
<voice name="����" class="����" src="voice/ma05/0040250a00">
��ͳ����Ҳ����Щ�ˣ�

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0230]
������ô���š�
����ʹ��ô�룬Ҳ�Ҳ������������ָ��ķ�����������
ʮ�����ܡ�

��ԭ��������ǲ��Ĺ��ȡ�
��ֱ����һ�죬�Ҳ�����������ѹ���Ź�Ŀ��ң�����
�Ǹ����ǻָ����˽����İɡ�

����ķ��������侲������ֻ���ֽź����ô��ŵذ塣
�ٵ�һ�ᣬ��������˯���������ˡ��ҵľ������Ԥ
�ϵ���Щ��
��Ȼ���������ܴ��⡣

����Ϊ��ʹ�������΢�Ķ������Թ�Ĺ�����˵����ʮ
��Σ�յġ�
��������и����������˫�����ȵر��Ź⣬���ϵصֵ�
���ľ��Ρ�

������һ��������
��������ʱ�ڱ�ѧϰ���յļ���֮һ��û�뵽��������
��ʽ�����ó������Ǹø�л���ػ��Ǹ÷�̺��أ��һ�
���Ǻ������

������ò������ż��ɣ��ǲ�����õġ�
������ʵȴ�Ƕ���������������ŵ���������������ȥ��

���򾲼�֮��Ķ������ֲ���˵Ч���������ԡ�
�����ǿЧ������һ��Ҫ����ҩ������һ��������Ҳ
�����أ�����ʹ�����Ҳ��ۣ�����ʹ�õĻ���ֻ�����
��Ч����

����Ȼ�������ָ���ϣ��������ʹ����ҩ������һѡ
����ڿ��Ƿ�Χ֮�⡣
��ֻҪ������һ����ػ���������������Ҳ���԰ɡ�Ȼ
���ң���Ҫ��Ӳ�����վ������

����ʹ�Ѿ���������Ȭ������
��������ϣ����������һ�Σ�վ������·��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0240]
//��������
<voice name="����" class="����" src="voice/ma05/0040260a00">
��һ��Ҫ˵����λ���˲��У�

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0250]
�����ٴ������˼��
�����ã����˲�䣬�Ӵ����Ǳߴ�����ŭ����

���·�<RUBY text="��������">����֮ŭ</RUBY>��
�����ò��һ������Ӧ�������ĸ�ɡ���ȻӦ�û���
�����ü������������������ǳ�Ĭ����ֻ��С��˵����
����ȫ��������

�����ҵ�����̫��ңԶ�����������ݡ�
��������Ȼ��ĸ�ѳ�Ϊ��ʸ֮�ģ���һ��һ�ж����Ǹ�
�˵�Ԥ��֮�С�û�б�Ҫ���ġ�


</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetNwC("cg/fw/nw��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0260]
//���⡿
<voice name="��" class="��" src="voice/ma05/0040270a14">
����������������������

{	FwC("cg/fw/fw����_�@��.png");}
//��������
<voice name="����" class="����" src="voice/ma05/0040280a00">
��������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0270]
������Ϊע������ɢ�Ĳ���ʱ���𣬻��ǵ�������Ϊ����
��<RUBY text="����">��ͷ</RUBY>�����ء�
����ľٶ�������Щ��֡�

�����ٴ�ר����������ʵ���С�
��ֱ�����µľ���ƽϢΪֹ��������һֱ��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateTextureEX("�}�ţ�׷��", 1100, Center, Middle, "cg/ev/ev128_�����ι�_b03.jpg");
	Fade("�}�ţ�׷��", 1000, 1000, null, true);

	Wait(1000);

//��ҹ�գ�
	OnBG(100,"bg001_��a_03.jpg");
	FadeBG(0,true);

	FadeDelete("�}�ţ�׷��", 1000, true);


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0280]
����˯�ŵ�ʱ�������賿�����ˡ�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�������`��
	OnBG(100,"bg001_��b_01.jpg");
	FadeBG(1000,false);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0290]
������������װ��������ĸ���к���
��Ȼ��������һ�۹�ķ��䡣

���������ϰ�֮ǰһֱҪ��ѭ�Ĵ���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�������ι⡤ƽ��
	CreateTextureEX("�}�ţ�", 3100, Center, Middle, "cg/ev/ev128_�����ι�_a01.jpg");
	Fade("�}�ţ�", 1000, 1000, null, true);

	SetFwC("cg/fw/fw����_�^ȥ.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0300]
//��������
<voice name="����" class="����" src="voice/ma05/0040290a00">
�������⡣��

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0310]
���Ѿ����ڴ�������ʲô��Ӧ�����һ��ǵ����š�
���ҵ������Ǵ��ݲ������Ǳߵģ���һ�㲻���Ƿ��ڷ�
������û�б仯��

���ڳ���֮�¿���������Ӹ�����ҡ�
�����벡ħ������������ս����ݵ����壬�����Ѿ�
ֻʣƤ����ͷ�ˡ�

��ʧȥ����ķ�˿���ƿݲݡ�
������Ҳ���������ˡ�

�����ǵ�˫���������ŷ�����
�����û�дӺ����﷢����΢�����������Ļ���������
��������Ҳ����ʲô����˼����¡�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_ƣ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0320]
//��������
<voice name="����" class="����" src="voice/ma05/0040300a00">
���������ʡ�����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0330]
���������Լ���������Щ���������¡�
�����ȷ���š����ǻ��ŵġ�

��һ��Ҫ�������������
���ⶨ�ܼ��������������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0340]
//��������
<voice name="����" class="����" src="voice/ma05/0040310a00">
���ؼҵ�·��˳·ȥ���Ǳߣ��ٴ����ɣ�

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0350]
���Ժ��а�����һ��ļƻ���
�������������뿪�˼ҡ�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���
	PrintGO("�ϱ���", 25000);
	CreateColorSP("�}��ܞ", 10000, "#000000");
	OnBG(100,"bg047_�������_�a_01.jpg");
	FadeBG(0,true);
	SetVolume("@mbgm*", 1500, 0, null);
	DrawDelete("�ϱ���", 1000, 100, "blind_01_00_1", true);

	WaitPlay("@mbgm*", null);
	WaitKey(1000);

//�������SE��Ҫ��������ցK�ߥ�`�ס�
	CreateSE("SEL01","se����_����_����᤯01_L");//���ߩ`ע��
	MusicStart("SEL01",2000,1000,0,1000,null,true);
	DrawDelete("�}��ܞ", 1000, 100, "blind_01_00_1", true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0360]
�������Ͱ���һ�������ϵ�����Ҳ�ܶࡣ
��ֻ�����ϵ�����û�а�����ô��������
�󲿷ֶ���ѧ���������������������ӡ�

���Ա߻���һȺŮѧ��С���ž�����
���ǿ�Ҫ�ٵ�����

�������м����˿��ź����졣
�������ǲ�֪���ġ����������к��������˵�����仰��


�����ǡ���
��ʲôʱ��������ˣ�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	ClearWaitAll(2000, 2000);

}

..//������ָ��
//�Υե����롡"ma05_005.nss"