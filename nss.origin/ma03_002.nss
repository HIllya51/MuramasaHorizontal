//<continuation number="920">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene ma03_002.nss_MAIN
{

	$TITLE_NOW=" ��������������ƪ ��Ϯ��������� ";

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
	#bg010_���������Q_01=true;
	#bg011_��������_01a=true;
	#bg018_���L�̄���_01=true;
	#bg007_��m��·a_01=true;


	//����`�ȥե饰���x�k֫���Τ�GameName
	#voice_on_���L=true;

	$PreGameName = $GameName;

	$GameName = "ma03_003.nss";

}

scene ma03_002.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

..//������ָ��
//ǰ�ե����롡"ma03_001.nss"

//�������������u�T��

	PrintBG("�ϱ���", 30000);
	CreateColorSP("�}�\Ļ��", 1500, "Black");
	Delete("�ϱ���");

	CreateTextureEX("�}�ƥ�100", 2000, Center, Middle, "cg/sys/Telop/lg_������.png");
	Fade("�}�ƥ�100", 2000, 1000, null, true);

	WaitKey(2000);

	FadeDelete("�}�ƥ�100", 2000, true);

	WaitKey(2000);


//���v�|������
//�������Ϊz��

	PrintGO("�ϱ���", 25000);

	OnBG(10,"bg010_���������Q_01.jpg");
	FadeBG(0,true);

	FadeDelete("�ϱ���", 1000, true);

	Wait(1000);

	SoundPlay("@mbgm22",0,1000,true);

//�������SE��Ҫ���������Ƥ�����ľ�ΰ夬܈�ࡢͬ�ƥ�ݤǥ�`�פȤ���
	CreateSE("SEL01","se����_����_ʰ��01");//���ߩ`ע��
	MusicStart("SEL01",2000,1000,0,500,null,true);


	OnBG(10,"bg011_��������_01a.jpg");
	FadeBG(1000,true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
���ھ�������ÿһ�춼����������

����Ϊ�Ѿ����̵���׼���ļ�����ͬ����������Ѻ��
�������ɷ��Լ������ɷ�ͬ�ȴ���������
�����ǻᱻ���Ե��̷���������������������
���Բ���ʵ��ǿ���Ͷ���

���ڹ涨��ֻҪ�������Ӧ�þͿ��Բμ����ۣ������
�ض���������û���������ƶȣ��������Ҫ���ǲ���
������ġ�������������
����Щ�Ǵӿ������������ġ�

��һ��֮�������������ʱ��ֻ����ʮ���ӡ�
������ʱ��ֻ���ڵ����η��а����ضȹ���

����Ȼ���Զ������д�������������ơ�
��������������������һ�졣

�������Ļ�����ֻ��һ��������˯�������ߡ������
������������̰˯�������Ļ����˻��Ļ�������ֻ��
���������״�С�Ŀռ���һЩ����Χ�ڵ��˶���

���ᷢ�������������Ϊ����Ȼ�ǲ�������ġ�
��Ҫʹ����е���˶�Ҳ����˵�ˡ������������η�����
�еĶ�������һ��Ҳ���С�����ֻ�Ǹɲ�Ħ����Ҳ�ᱻ
����������������ɱ��׼����

�����ջ�ʲô�ĳ��⡣�ڳ�����������Ҳֻ��������
�̼��������˳���һ��������񾭡�
�����գ������Ķ�����ֻ����ؽڡ������������Ȼ�����
����������ѡ�

��Ҳ����˵�������������ľ����������顣

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//��������
	OnSE("se�ճ�_����_�Ϊz���_��01",1000);
	SetVolume("SEL*", 300, 0, null);


	SetNwC("cg/fw/nw����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020a]
//������㣯���ء�
<voice name="����㣯����" class="����������" src="voice/ma03/0020010e038">
�����ɷ����İ˺š���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	StR(1000, @0, @0,"cg/st/st����_ͨ��_����.png");
	FadeStR(300,true);

	SetFwC("cg/fw/fw����_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020b]
//��������
<voice name="����" class="����" src="voice/ma03/0020020a00">
���ڡ���

{	NwC("cg/fw/nw����.png");}
//������㣯���ء�
<voice name="����㣯����" class="����������" src="voice/ma03/0020030e038">
���ӵ���Ϊ��ȡ�����Ҫ������ʱ���͵����־���
��֪ͨ�����͵ĳ����Ѿ����ˡ�
��ʮ��������ʰ�á���

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0020040a00">
�������ˡ���

{	NwC("cg/fw/nw����.png");}
//������㣯���ء�
<voice name="����㣯����" class="����������" src="voice/ma03/0020050e038">
��������˵�������㡣��

{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0020060a00">
����ʲô�¡���

{	NwC("cg/fw/nw����.png");}
//������㣯���ء�
<voice name="����㣯����" class="����������" src="voice/ma03/0020070e038">
���ղţ�����ʲô����

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0020080a00">
�����Գš���

{	NwC("cg/fw/nw����.png");}
//������㣯���ء�
<voice name="����㣯����" class="����������" src="voice/ma03/0020090e038">
��������������
���Ǹ��Գ��𡣡�

{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0020100a00">
���ǡ���

{	NwC("cg/fw/nw����.png");}
//������㣯���ء�
<voice name="����㣯����" class="����������" src="voice/ma03/0020110e038">
���㣬�������ˣ���

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0020120a00">
�����顣��

{	NwC("cg/fw/nw����.png");}
//������㣯���ء�
<voice name="����㣯����" class="����������" src="voice/ma03/0020130e038">
�����������

{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0020140a00">
�����׸�ܺóԵ��Ǹ��𡣡�

{	NwC("cg/fw/nw����.png");}
//������㣯���ء�
<voice name="����㣯����" class="����������" src="voice/ma03/0020150e038">
�����飬���ӻ���ɡ���

{	FwC("cg/fw/fw����_Ц�a.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0020160a00">
���ǰ�����

{	NwC("cg/fw/nw����.png");}
//������㣯���ء�
<voice name="����㣯����" class="����������" src="voice/ma03/0020170e038">
���������ҵĹ��磬���Գ���˫��˫���ŵ���
���ġ���

{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0020180a00">
������������ɡ���

{	NwC("cg/fw/nw����.png");}
//������㣯���ء�
<voice name="����㣯����" class="����������" src="voice/ma03/0020190e038">
��˫�����������ĸ��Գţ��һ��ǵ�һ�μ�������

{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0020200a00">
�����Լ�Ҳû��ô������������ô���ġ���

{	NwC("cg/fw/nw����.png");}
//������㣯���ء�
<voice name="����㣯����" class="����������" src="voice/ma03/0020210e038">
���������𣿡�

{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0020220a00">
�����ܵ�Ҫ������

{	NwC("cg/fw/nw����.png");}
//������㣯���ء�
<voice name="����㣯����" class="����������" src="voice/ma03/0020230e038">
������������������
�����ҷ����ˡ���

{	FwC("cg/fw/fw����_Ц�a.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0020240a00">
����̫���ˡ���

{	NwC("cg/fw/nw����.png");}
//������㣯���ء�
<voice name="����㣯����" class="����������" src="voice/ma03/0020250e038">
����׼��׼������

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0020260a00">
���õġ���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���`�}
//�����L��

	PrintGO("�ϱ���", 25000);

	CreateColorSP("�}��ܞ", 10000, "#000000");

	OnBG(100,"bg018_���L�̄���_01.jpg");
	FadeBG(0,true);

	SetVolume("@mbgm*", 1500, 0, null);

	DrawDelete("�ϱ���", 1000, 100, "blind_01_00_1", true);

	WaitPlay("@mbgm*", null);
	Wait(1000);

	DrawDelete("�}��ܞ", 1000, 100, "blind_01_00_1", true);

	SoundPlay("@mbgm30",0,1000,true);

	SetFwC("cg/fw/fw���L_ͨ��.png");

	#voice_on_���L=true;

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
//�����L��
<voice name="���L" class="���L" src="voice/ma03/0020270a11">
������Ҳ����˵��
��û�д�����

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0020280a00">
���ǵġ�
���Ǹ������Ǳ����Ǻ�������ġ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
������ȡ�����ϵĲ��롣
���Ǽ��ᵽ������ԼԼ����������Զ�ݵ��²衣����
ɫ�����Ǳ��˻�����Ʒ�ʲ����

��������б������ˮ�津���촽�ĳ̶ȣ��ʪ��⡣

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050]
//��������
<voice name="����" class="����" src="voice/ma03/0020290a00">
������Ҳ��һ���Ŀ���������˵����
������һ���˶�û���ӵ������������ϵ�<RUBY text="����">ȫ��</RUBY>
������������ġ���

{	FwC("cg/fw/fw���L_����.png");}
//�����L��
<voice name="���L" class="���L" src="voice/ma03/0020300a11">
��˵��û��
������˵���������е�ȫ����ָ�����ܵ���
�û�����ȫɥʧ�̶��𺦵�״̬���ӱ���������
���ɵ��ĳ����ҡ���

//�����L��
<voice name="���L" class="���L" src="voice/ma03/0020310a11">
��������ȫ��Ҳ������������ƽ�������ġ���
�ǳ�ʶ��
�����ǣ�������<RUBY text="����">�Ǹ�</RUBY>���ˣ��������ɶ�
�޷�����

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0020320a00">
���ǲ�����ս����
���Ӻ��ߺͱ�����֮�䣬
��������ս�������º͵�
��Ϸ��Ľ��档��

//��������
<voice name="����" class="����" src="voice/ma03/0020330a00">
��ֻ�����֡�
����Ϯ���ذ���ׯ�Ĵ�Х��
����Ϯ��ɽ�Ŵ�ׯ�Ļ�ɽ�󱬷���
���ض�û���Ҵ�ġ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0060]
��������ʵ��������ʵ��
��û�л�Ӧ��

���������ķ��䶫���ǽ���ϣ�װ����һ���������ż�
����ֲ�ŵ�ɣ�����Ǽ�Ϊƽ���ķ羰�����Ӽ�����������
Ҳûʲô����ɡ�
����Ҫ����ϲ��ϲ���Ļ�������ϲ����

���������˵���Ʒ����������������������һ�����ҡ�
����䷿������ˣ��Լ����ġ�
����˵����Ϊ��ƽӹ����Ʒ�������ÿ�������ƽ��
�������⾳������Ҳ��ֻ���ҵ�ƫ�á�

�����������ֻ���Ҳ����䷿�Ψһ���ԳƵ�����
װ��Ʒ�Ķ�����
����������ʵ������ļҾߺʹ��������ϣ�����һЩ��
����Ȥ�Ķ�����

����Ϊ�����������ΰ���Ӧ���ǣ��ľ������𳤣�����
���Ÿ��Ƕ�ô�¼ŵľ���
��������ٷ��һ������ݴʣ��������˵������<RUBY text="����">�ɱ�</RUBY>��

���ֻ���<RUBY text="����">��ʵ</RUBY>��
����ʵ����������ʵ�ľ����𳤣��ƿ�����
������������ߣ��ٴο����ҡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw���L_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0070]
//�����L��
<voice name="���L" class="���L" src="voice/ma03/0020340a11">
����ֹ�ˡ��ѡ��ķ����𡣡�

{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0020350a00">
���ǵġ�
�������޹�Ա�����Ҿ���Ӷ����ħС̫���Ѿ�
ȷ���Ǽ����壬���˶��������ˡ���

{	FwC("cg/fw/fw���L_���a.png");}
//�����L��
<voice name="���L" class="���L" src="voice/ma03/0020360a11">
��������Ҫ���ľ�������¡�
���������������ֶ���<RUBY text="����">����</RUBY>��ȥ����

{	FwC("cg/fw/fw���L_ͨ��.png");}
//�����L��
<voice name="���L" class="���L" src="voice/ma03/0020370a11">
���������˰�����

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0020380a00">
��û����¡�
������ģ��϶������ҡ���

{	FwC("cg/fw/fw���L_ͨ��.png");}
//�����L��
<voice name="���L" class="���L" src="voice/ma03/0020390a11">
����������
��������Ǻŵ��鱨���𣿡�

{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0020400a00">
�������Ҿ�����һ������
����ħС̫���Ǳ���Ȼ��<RUBY text="����">�Ǹ�</RUBY>�й��Ի��Ӵ���
�����ڵ�һ���м�ֵ���鱨����û�С���

{	FwC("cg/fw/fw���L_���a.png");}
//�����L��
<voice name="���L" class="���L" src="voice/ma03/0020410a11">
����������
�������Ǹ�Ӧ������ʲô�ط�����ʲô�ˣ���
<RUBY text="����">����</RUBY>�Űɡ�����

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0020420a00">
����������Ļ���ʵ�ڲ���������

{	FwC("cg/fw/fw���L_���a.png");}
//�����L��
<voice name="���L" class="���L" src="voice/ma03/0020430a11">
�����ܵ���ʧ������ȫ����Χ��������
Ҳ��ȫ׽����һ����˿����
�������������Ҳ�Ǹ�ԭ�򡭡���

{	FwC("cg/fw/fw���L_ͨ��.png");}
//�����L��
<voice name="���L" class="���L" src="voice/ma03/0020440a11">
���Ѿ������ˡ�
��Ӧ�ÿ����ǲ�����֧Ԯ���ˡ���

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0020450a00">
����ȷ�����ǣ�Ŀ��ȫȻ������
��ʲô�ˣ�����ʲôĿ�ģ�����޲��ɱ�˵�
ɱ¾�����Ԯ�֡���

{	FwC("cg/fw/fw���L_ͨ��.png");}
//�����L��
<voice name="���L" class="���L" src="voice/ma03/0020460a11">
��û��˵��ͨ�ɣ�
���������������˵��ͨ���µ������У�
����ͷ�ۡ���

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0020470a00">
�������Ļ���ֻ�Ǹ��������ϵ��Ʋ⣬���
�ѽӽ����ࡣ��

{	FwC("cg/fw/fw���L_ͨ��.png");}
//�����L��
<voice name="���L" class="���L" src="voice/ma03/0020480a11">
��û��
��������װǻ����ֽ��̸������̽��
Ҳ�ɲ����¡���

//�����L��
<voice name="���L" class="���L" src="voice/ma03/0020490a11">
��������Ҫ�����Ե��鱨��
����ǸҪ�������˰�����������

{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0020500a00">
���˽⡣
�����ˡ�����һ���£�Ҳ�е��������⡣��

{	FwC("cg/fw/fw���L_ͨ��.png");}
//�����L��
<voice name="���L" class="���L" src="voice/ma03/0020510a11">
��ʲô����

{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0020520a00">
���ṩ����ħС̫�ɽ��е����ˡ�
��������ѩ���һ�ء����������������͵�Ұ
ľɽ�飬���������ǣǣȣѵ����ȡ���

{	FwC("cg/fw/fw���L_ͨ��.png");}
//�����L��
<voice name="���L" class="���L" src="voice/ma03/0020530a11">
������������

{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0020540a00">
�������ä���Լ����������л���Ϊǰ��Ļ�
������ħ�����ǣȣѶ��ߵĽ���ͨ��ѩ�����
�û����ˡ�Ϊʲô��������Ϊ�ᱻ�����ء���

//��������
<voice name="����" class="����" src="voice/ma03/0020550a00">
���ǣȣѵġ����Խ��С����ߵĳɹ�����ȻӦ��
���������������
����Ȼ�Ļ�������ô�󹤷��Բ��ռ����о�û
�������ˡ���

{	FwC("cg/fw/fw���L_���a.png");}
//�����L��
<voice name="���L" class="���L" src="voice/ma03/0020560a11">
����������
��ǰ������Ǹ���ʦ���ǽ��崨��ɡ���Ҳ
������Դ�����Ľ��С���

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0020570a00">
���ǵġ�
���һ������й�������

{	FwC("cg/fw/fw���L_ͨ��.png");}
//�����L��
<voice name="���L" class="���L" src="voice/ma03/0020580a11">
��������ô�����أ���

{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0020590a00">
���������Ҫ���׵����۵Ļ���
���ǣȣѶԴ�͵Ĳ����ĵ����˽�פ���ļ�
����ɢ��ʹ���������׵������˺���
������ž�����������

{	FwC("cg/fw/fw���L_ͨ��.png");}
//�����L��
<voice name="���L" class="���L" src="voice/ma03/0020600a11">
�����Լ���������۵Ĵ���أ���

{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0020610a00">
�������񡣡�

{	FwC("cg/fw/fw���L_ͨ��.png");}
//�����L��
<voice name="���L" class="���L" src="voice/ma03/0020620a11">
��Ϊʲô����

{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0020630a00">
���ǣȣѶԴ�Ͳ������𣿡�

{	FwC("cg/fw/fw���L_����.png");}
//�����L��
<voice name="���L" class="���L" src="voice/ma03/0020640a11">
�������ܡ�
�������ǣ�����ô���°�����

{	FwC("cg/fw/fw���L_ͨ��.png");}
//�����L��
<voice name="���L" class="���L" src="voice/ma03/0020650a11">
��������������Ѿ����Ʋ��ˡ�
��������������˵�ɡ��������Ϊ���⡭��
���ֻ����Ҳ����̸����

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0020660a00">
�������𣿡�

{	FwC("cg/fw/fw���L_ͨ��.png");}
//�����L��
<voice name="���L" class="���L" src="voice/ma03/0020670a11">
������������ҵĹ�ۡ��Ϣһ�°ɡ����û�
�������ġ�
�����죬��������֮���и��ط�����������
ȥһ�¡���

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0020680a00">
��ȥ�����

{	FwC("cg/fw/fw���L_ͨ��.png");}
//�����L��
<voice name="���L" class="���L" src="voice/ma03/0020690a11">
����ᦌm��
�������������ټ��㡣��

{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0020700a00">
������������

{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0020710a00">
�������ǣ�Ϊ�Ρ���

{	FwC("cg/fw/fw���L_ͨ��.png");}
//�����L��
<voice name="���L" class="���L" src="voice/ma03/0020720a11">
�����±�������ģ�����ע��������
�����½�����Σ����������Ǻ��¼�������
�������������ǡ���

//�����L��
<voice name="���L" class="���L" src="voice/ma03/0020730a11">
��������Ҳ�кܴ��������
����ʵ������ǰ���������������еؽ�̸
һ�Ρ���

{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0020740a00">
�����ǡ�
������մ��Ѫ�۵��������ڻ�����ǰ������

{	FwC("cg/fw/fw���L_ͨ��.png");}
//�����L��
<voice name="���L" class="���L" src="voice/ma03/0020750a11">
�����²��ǻ�����������ν֮�µ��ˡ���

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0020760a00">
���Ҳ���Ϊ������ν�����顣
��ִ�Ƴ���֮��Ӧ��Զ�벻�ࡣ��

{	FwC("cg/fw/fw���L_ͨ��.png");}
//�����L��
<voice name="���L" class="���L" src="voice/ma03/0020770a11">
����ѽ������ô˵��
����Ҫ���ǵ����Ǹ�ʵ�ɼҡ���Ϊ���˽�
�¼���ʵ�����Ҫ�����·��ֳ����˵�˵
����������������ˡ���

//�����L��
<voice name="���L" class="���L" src="voice/ma03/0020780a11">
�����������ѡ�����Ҳû�б�Ҫ�����Ц����ӭ��
��ֻҪ�ش��������Ĺ��������¼��������
���ˡ���

{	FwC("cg/fw/fw���L_ͨ��.png");}
//�����L��
<voice name="���L" class="���L" src="voice/ma03/0020790a11">
������һСʱ���ҡ�������һ�°ɡ���

{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0020800a00">
�������������ˡ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0080]
�����ε�ͷ��
�����ǳ��صĶԻ�����������˵Ҳ�޿��κΡ�

��������ᦌm��������
��������˵�����ǻ��ҵ����������Ĵ��ԣ���������
����һ�������������ų̶ȵ����
�������ͽ�Ĺ��ˣ���δ���š�

���������ǲ�Ҫ�ٸ��ʵף��������ǵıȽϺðɡ�

������һ���Ѳ���ð�����Ĳ�ˮ��
��ʧȥ���¶ȵĲ裬���޵ؿࡣ

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���`�}��·

	PrintGO("�ϱ���", 25000);

	CreateColorSP("�}��ܞ", 10000, "#000000");

	OnBG(100,"bg007_��m��·a_01.jpg");
	FadeBG(0,true);

	DrawDelete("�ϱ���", 1000, 100, "blind_01_00_1", true);
	DrawDelete("�}��ܞ", 1000, 100, "blind_01_00_1", true);


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0090]
��ͨ��Ա��ר�����߳����־���
��������֡�

��������������С���˵ʢ����ȴ��
���뵽���˵�Ŀ��ȴҲ���ա�
������������һ����������ֵ���Ϊ��

����˵��ˣ��𳤴��ž����Ʒ�������ȴû����
�������ķ��˷���
����֪�������ǲ���Ҫ�ĵ��ġ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw���L_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0100]
//�����L��
<voice name="���L" class="���L" src="voice/ma03/0020810a11">
�����ûʲô�µĻ����������ǰ�ص���ۡ��
����֮ǰ�ͷ���һ�°ɡ���

{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0020820a00">
���õġ�
�����鷿�Ļ�Ҳ�����𣿡�

{	FwC("cg/fw/fw���L_ͨ��.png");}
//�����L��
<voice name="���L" class="���L" src="voice/ma03/0020830a11">
������㡣
������������˵�����������й��ڵ���־�ŵ���
���о��鼮���ܡ���

{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0020840a00">
�����Ƿ���ȽϹ��ġ������Ͽ����ɡ�
������ˡ���

{	FwC("cg/fw/fw���L_ͨ��.png");}
//�����L��
<voice name="���L" class="���L" src="voice/ma03/0020850a11">
����������
���ţ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0110]
���𳤵����ߣ���Ȼ�����ˡ�
�����ҵ��Һ󷽶�ȥ��

���Ҹ��ſ���ȥ��
��
���и���Ӱ��

��������ˮ��ǽ�ϣ�����߲�Ŀ�����š�
��էһ����ò�ƺ��޲���������ʵ�ϣ�
������ͫ���˸��ǿ�ҵ���־��

�����ҵļ����У���һֱ��������ӡ�

��������������Ժ���������̼��䡣
��Ҫ�����������ֺ���������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//��һ��

	StL(1000, @0, @0,"cg/st/stһ��_ͨ��_�Ʒ�.png");
	FadeStL(300,true);

	SetFwC("cg/fw/fwһ��_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0120]
//��һ����
<voice name="һ��" class="һ��" src="voice/ma03/0020860a02">
������������

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0020870a00">
������������

{	FwC("cg/fw/fw���L_ͨ��.png");}
//�����L��
<voice name="���L" class="���L" src="voice/ma03/0020880a11">
���������𣿡�

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0020890a00">
���š���
��Ϊʲô����������

{	FwC("cg/fw/fw����_Ц�a.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0020900a00">
��һ�����С�㡣��


{	OnSE("se�M��_���ߥ���_���`��01",1000);
	FwC("cg/fw/fwһ��_ŭ��b.png");}
//������å����`��
//��һ����
<voice name="һ��" class="һ��" src="voice/ma03/0020910a02">
���з��˰�!!��

{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0020920a00">
������������Ǹ����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	ClearWaitAll(1000, 2000);

}

..//������ָ��
//�Υե����롡"ma03_003.nss"