//<continuation number="550">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md04_007.nss_MAIN
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
	#bg026_���ӘSɽ��a_01=true;
	#bg100_�����w_01=true;

	#ev803_�����ޥåף�_a=true;
	#ev803_�����ޥåף�_b=true;
	#ev803_�����ޥåף�_c=true;
	#ev803_�����ޥåף�_d=true;
	#ev803_�����ޥåף�_e=true;
	#ev803_�����ޥåף�_f=true;
	#ev803_�����ޥåף�_g=true;
	#ev803_�����ޥåף�_h=true;

	#ev805_�����}����`�����Σ�_b=true;


	//����`�ȥե饰���x�k֫���Τ�GameName
	$PreGameName = $GameName;

	$GameName = "md04_008.nss";

}

scene md04_007.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

..//������ָ��
//ǰ�ե����롡"md04_006.nss"

//��������ݳ����زĴ_�J�Τ���һ�����������

//�����ӘS

	PrintBG("�ϱ���", 30000);
	CreateColorSP("�\Ļ��", 5000, "BLACK");
	OnBG(100, "bg100_�����w_01.jpg");
	FadeBG(0, true);

	SoundPlay("@mbgm34", 0, 1000, true);


	Delete("�ϱ���");
	FadeDelete("�\Ļ��",1500,true);

	CreatePlainEX("�}��д", 100);
	Fade("�}��д", 0, 1000, null, true);


//�����ġ��ɤ��`��ɤ��`��
	CreateSE("����", "se���L_�Ɖ�_���k04");
	MusicStart("����", 0, 1000, 0, 1000, null,false);

	Shake("�}��д", 2000, 0, 2, 0, 0, 1000, DxlAuto, true);

	OnBG(100, "bg027_���ӘS�u�h���g_01.jpg");
	FadeBG(1000, true);
	Delete("�}��д");

	SetFwC("cg/fw/fw�衩��_�n�y.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/0070010a07">
��ŶŶ��
���ų���󡣡�

{	FwC("cg/fw/fw�׵�_����.png");}
//���׵���
<voice name="�׵�" class="�׵�" src="voice/md04/0070020a08">
�����ǳ��衭��
����Ȼ��ô��Ϳ����������ֵ���գ���

{	FwC("cg/fw/fw�衩��_����.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/0070030a07">
�������ƺ�������������������ԣ�
����Ϯͻ���˷�������
����������Ϊ��������

{	FwC("cg/fw/fwͯ��_��˼.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/md04/0070040a09">
�������������
��ƶɮȷʵ֪�����ǵĴ��ڡ�����

//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/md04/0070050a09">
��ȴû�뵽��פ����Ȼ׼������ô�డ����

{	FwC("cg/fw/fw�׵�_���d.png");}
//���׵���
<voice name="�׵�" class="�׵�" src="voice/md04/0070060a08">
���ǰ�������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���ޤ�����
	CreatePlainEX("�}��д", 100);
	Fade("�}��д", 0, 1000, null, true);
	OnSE("se���L_�Ɖ�_�󱬰k01", 1000);
	Wait(500);
	Shake("�}��д", 3000, 0, 3, 0, 0, 1000, DxlAuto, false);
	Wait(1000);
	CreateTextureEX("�}����100", 2000, @0, @0, "cg/ev/ev805_�����}����`�����Σ�_b.jpg");
	Request("�}����100", Smoothing);
	SetBlur("�}����100", true, 1, 500, 100, false);

	Fade("�}����100", 1000, 1000, null, false);


	SetFwC("cg/fw/fw�׵�_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
//���׵���
<voice name="�׵�" class="�׵�" src="voice/md04/0070070a08">
���������������ǵģ�
����˵���������ߵ������Ҳ̫�������˰ɣ���

{	FwC("cg/fw/fw�׵�_ŭ��.png");}
//���׵���
<voice name="�׵�" class="�׵�" src="voice/md04/0070080a08">
����������<RUBY text="������">���ͷ��н�</RUBY>���Լ�ͷ�ϴ���ð�����

{	FwC("cg/fw/fw�衩��_���.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/0070090a07">
��û�취����
���տ�ս�߿վͱ�ռ��Ļ�
�������Ǿ��Բ����ġ���

{	FwC("cg/fw/fw�衩��_�n�y.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/0070100a07">
�������Ǹ�������������״Ｘ���޷��ҵ�����
  ��ʹ֪������λ�ã�һ��С��Ҳ������ġ���

{	FadeDelete("�}����100", 500, false);
	FwC("cg/fw/fw�׵�_����.png");}
//���׵���
<voice name="�׵�" class="�׵�" src="voice/md04/0070110a08">
����˵��������
�����������Ǽ������ˣ���

{	FwC("cg/fw/fw�׵�_ŭ��.png");}
//���׵���
<voice name="�׵�" class="�׵�" src="voice/md04/0070120a08">
����Ҫ����!!��

{	FwC("cg/fw/fw�衩��_���.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/0070130a07">
����ô����
��׼����ô����ͯ�ĺ��У���

{	FwC("cg/fw/fwͯ��_��˼.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/md04/0070140a09">
��������������
������Ҳ���ó�ս׼���ˡ���

{	FwC("cg/fw/fwͯ��_ͨ��.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/md04/0070150a09">
�������Ǵ�ͷ�����쵼ʿ���ɡ�
��������Σ���

{	FwC("cg/fw/fw�衩��_ͨ��b.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/0070160a07">
���á���

{	FwC("cg/fw/fw�׵�_����.png");}
//���׵���
<voice name="�׵�" class="�׵�" src="voice/md04/0070170a08">
��û���⣡��

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,150);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���`�}���x�؇�
//����פ�����ֹ�״�r��ʸӡ��͹�Ȥ��Ǉ��

//������ǰ�����״�B�ˤ��Ƥ��ޤ� inc�Ѿ�

	PrintBG("�ϱ���", 30000);
	CreateSE("SE01","se�ճ�_��_����᤯��02");
	CreateColorSP("�}��ܞ", 15000, "#000000");
	CreateColorSP("�}ɫ�\", 100, "#000000");
	CreateTextureSP("�}�ţ֑����", 2000, Center, Middle, "cg/ev/ev803_�����ޥåף�_a.jpg");
	FadeDelete("�ϱ���", 1000, true);
	MusicStart("SE01",0,1000,0,750,null,false);
	DrawDelete("�}��ܞ", 1000, 100, "blind_03_00_0", true);

	WaitKey(500);

	CreateTextureSP("�}�ţ֑����", 1990, Center, Middle, "cg/ev/ev803_�����ޥåף�_b.jpg");
	DrawDelete("�}�ţ֑����", 1000, 100, "blind_02_01a_0", true);
	WaitKey(300);

	CreateTextureSP("�}�ţ֑����", 1980, Center, Middle, "cg/ev/ev803_�����ޥåף�_c.jpg");
	DrawDelete("�}�ţ֑����", 1000, 100, "blind_02_01a_0", true);
	WaitKey(300);

	CreateTextureSP("�}�ţ֑����", 1970, Center, Middle, "cg/ev/ev803_�����ޥåף�_d.jpg");
	DrawDelete("�}�ţ֑����", 1000, 100, "blind_02_01a_0", true);
	WaitKey(500);

	SetFwC("cg/fw/fwͯ��_��˼.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/md04/0070180a09">
������ͻϮ������֮亼��ɱ�֮亡�
����������ͨ����Ϯ�ͽ������������̨��
���õ�½�����е�½�ˡ���

//�룺���������lꠣ���090930��
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/md04/0070190a09">
������ô��ʱ�������ǵĺ������߾ͱ������ˡ���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���⡣���
	CreateTextureSP("�}�ţ֑����", 1960, Center, Middle, "cg/ev/ev803_�����ޥåף�_e.jpg");
	Request("�}�ţ֑����", Smoothing);

	DrawDelete("�}�ţ֑����", 1000, 100, "blind_02_01a_0", true);
	WaitKey(200);

	Zoom("�}�ţ֑����", 1000, 1200, 1200, Dxl1, false);
	Move("�}�ţ֑����", 1000, 91, 40, Dxl1, true);
	WaitKey(500);


	SetFwC("cg/fw/fwͯ��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/md04/0070200a09">
��������֮亵�½�ľ���ͨ������ֵ������ˡ�
�����ɱ�֮亵�½�Ĳ��Ӵ���������·���뿪
���ֵֽ������������ˡ���

{	FwC("cg/fw/fw�衩��_����.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/0070210a07">
����������������·��
���ⲻ��ͻ���������������𣿡�

{	FwC("cg/fw/fw�衩��_�n�y.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/0070220a07">
�����ǲ�ϧ����������ҲҪ���̴���𣿡�

{	FwC("cg/fw/fwͯ��_ͨ��.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/md04/0070230a09">
����������Ҳ��Ҳ��
����פ���������������ռ��������·����

{	FwC("cg/fw/fwͯ��_��˼.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/md04/0070240a09">
���������ô��ڼ��н���һ����<RUBY text="������">������</RUBY>��·��
������һ�����Ͳ����������ȥ�ӽ�
�����Ǿ��Ӻ�װ�׳��Ĵ�·������

{	FwC("cg/fw/fwͯ��_ͨ��.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/md04/0070250a09">
�������û���������������
�����е������������������������ֹͨ��
�Ĵ���Ҳ��Ч�ˡ���

{	FwC("cg/fw/fw�衩��_�n�y.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/0070260a07">
�������ֶθ��������˻�󡣡�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���⡣���ӘS���M�Ĥ����܊����
	CreateTextureSP("�}�ţ֑����", 1950, Center, Middle, "cg/ev/ev803_�����ޥåף�_f.jpg");
	Request("�}�ţ֑����", Smoothing);
	Zoom("�}�ţ֑����", 0, 1200, 1200, null, true);
	Move("�}�ţ֑����", 0, 91, 40, null, true);

	DrawDelete("�}�ţ֑����", 1000, 100, "blind_02_01a_0", true);
	WaitKey(500);

	SetFwC("cg/fw/fwͯ��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050]
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/md04/0070270a09">
���������Ų��þͻᵽ���������ܱߡ�
��Ȼ������һ�����Ÿո�ͻ���˳����΍g����
����������ͨ������ֵ���Ϯ�����ְɡ���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���⡣��g�ֵ���������һ܊

	Move("�}�ţ֑����", 1000, -91, 40, AxlDxl, true);


	CreateTextureSP("�}�ţ֑����", 1940, Center, Middle, "cg/ev/ev803_�����ޥåף�_g.jpg");
	Request("�}�ţ֑����", Smoothing);
	Zoom("�}�ţ֑����", 0, 1200, 1200, null, true);
	Move("�}�ţ֑����", 0, -91, 40, null, true);

	DrawDelete("�}�ţ֑����", 1000, 100, "blind_01_01a_0", true);
	WaitKey(700);

	SetFwC("cg/fw/fw�衩��_���.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0060]
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/0070280a07">
�����Ǻ󷽲��ӡ�
���Ǹ���ȷ�����ֵ�ռ��Ͳ����ߵİɡ���

{	FwC("cg/fw/fw�׵�_����.png");}
//���׵���
<voice name="�׵�" class="�׵�" src="voice/md04/0070290a08">
���ǰ���
����֮����Ȳ����ˡ���

{	FwC("cg/fw/fw�׵�_܊��.png");}
//���׵���
<voice name="�׵�" class="�׵�" src="voice/md04/0070300a08">
�������Ǽ�����������֧���ӡ���

{	FwC("cg/fw/fw�衩��_����.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/0070310a07">
���󴬿ں�������𣿡�

{	FwC("cg/fw/fwͯ��_��˼.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/md04/0070320a09">
���š�
�������ڸ���ô���ء�����

{	FwC("cg/fw/fw�׵�_�䵨.png");}
//���׵���
<voice name="�׵�" class="�׵�" src="voice/md04/0070330a08">
����ͯ�Ĵ������ڳ����ģ�
��ָ�������ֳ��ڽ��з��ա���

{	FwC("cg/fw/fw�׵�_܊��.png");}
//���׵���
<voice name="�׵�" class="�׵�" src="voice/md04/0070340a08">
���������С������ǰ���󴬷��򡣡�

{	FwC("cg/fw/fw�衩��_����.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/0070350a07">
�����Һ�ܥԽ����ȥ����ڰɡ�
���źӺͺS��������Ԥ��������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���⡣�󴬤��ٛg��܊����
	Zoom("�}�ţ֑����", 1000, 1000, 1000, Dxl1, false);
	Move("�}�ţ֑����", 1000, 0, 0, Dxl1, true);

	CreateTextureSP("�}�ţ֑����", 1930, Center, Middle, "cg/ev/ev803_�����ޥåף�_h.jpg");
	DrawDelete("�}�ţ֑����", 1000, 100, "blind_02_01a_0", true);
	WaitKey(500);

	SetFwC("cg/fw/fw�׵�_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0070]
//���׵���
<voice name="�׵�" class="�׵�" src="voice/md04/0070360a08">
���š�
��ͯ�Ĵ��ˣ���ô������

{	FwC("cg/fw/fwͯ��_ͨ��.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/md04/0070370a09">
�������ðɡ�
����λ�����������ˡ���

{	FwC("cg/fw/fwͯ��_��˼.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/md04/0070380a09">
�������ޡ���

{	FwC("cg/fw/fw�׵�_����.png");}
//���׵���
<voice name="�׵�" class="�׵�" src="voice/md04/0070390a08">
��������ɡ�
�����׽���ĳ���ô�ܽ����ĵ�֮�֣���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	OnBG(100, "bg027_���ӘS�u�h���g_01.jpg");
	FadeBG(0, true);
	FadeDelete("�}�ţ֑��*", 500, true);

	SetFwC("cg/fw/fw�衩��_Ц�.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0075]
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/0070400a07">
���Ǻǡ�����

{	FwC("cg/fw/fw�׵�_�䵨.png");}
//���׵���
<voice name="�׵�" class="�׵�" src="voice/md04/0070410a08">
�����������

{	FwC("cg/fw/fw�衩��_ͨ��b.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/0070420a07">
��ûʲô��
���ܾ����׵�������Ȱ�����

{	FwC("cg/fw/fw�衩��_Ц�.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/0070430a07">
�����������������ı����㻹�ǱȽ��ʺ�
�������˵�ս���ɣ���

{	FwC("cg/fw/fw�׵�_�@��.png");}
//���׵���
<voice name="�׵�" class="�׵�" src="voice/md04/0070440a08">
��������������������

{	FwC("cg/fw/fw�׵�_ͨ��.png");}
//���׵���
<voice name="�׵�" class="�׵�" src="voice/md04/0070450a08">
���ǰ���
������������ˡ���

{	FwC("cg/fw/fwͯ��_ͨ��.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/md04/0070460a09">
���Ǻǡ�����

{	FwC("cg/fw/fw�衩��_����.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/0070470a07">
���á�
����Ҳ������ɡ���

{	FwC("cg/fw/fw�衩��_ͨ��a.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/0070480a07">
�����Ծ���������
����ʨ�Ӻ����֮ǰ���س��ţ�
Ԯ�����˾ͷ���������

{	FwC("cg/fw/fw�衩��_ͨ��b.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/0070490a07">
����⹥�Ǿ�Ȼ�󹥴��亡���

{	FwC("cg/fw/fw�׵�_���d.png");}
//���׵���
<voice name="�׵�" class="�׵�" src="voice/md04/0070500a08">
���������԰���
������һ��ʤ��������ȵ��ˡ���

{	FwC("cg/fw/fwͯ��_ͨ��.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/md04/0070510a09">
������������
�����Ծ���ô���ˡ���

{	FwC("cg/fw/fw�衩��_ͨ��b.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/0070520a07">
���š���

{	FwC("cg/fw/fw�衩��_���.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/0070530a07">
������������û��Ҫ��������ز���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0080]
���������ֻ��������������������˵����

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw�衩��_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0090]
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/0070540a07">
������Ҳ���ǵġ�
����ô����ؿ�ս��
�ܲ��ܴ��ƽ�ֻ���֪���أ�

{	FwC("cg/fw/fw�����AȾ_ͨ��.png");}
//��������
<voice name="����" class="����" src="voice/md04/0070550a00">
�������ǰ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0100]
���������˴�ͽ�פ����
�����ȱ������������ޣ���ȥ�����֮�⼸��ȫ������
װ��������Խ����

����ǿ�С�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	ClearWaitAll(2000, 1500);

}

..//������ָ��
//�Υե����롡"md04_008.nss"