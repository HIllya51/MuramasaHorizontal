//<continuation number="1730">


chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene ma01_006.nss_MAIN
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
	#ev103_����֦����_a=true;

	#bg013_�`�}���a_01=true;
	#bg014_�`�}���A��_01=true;
	#bg012_�`�}�kǰ���x_01=true;

	//����`�ȥե饰���x�k֫���Τ�GameName
	#voice_on_���B����֦=true;
	#voice_on_���}����=true;

	$PreGameName = $GameName;

	$GameName = "ma01_007.nss";

}

scene ma01_006.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();



..//������ָ��
//ǰ�ե����롡"ma01_005.nss"

	PrintBG("�ϱ���", 30000);

//������`�}
	CreateTextureEX("�}����100", 100, Center, Middle, "cg/bg/bg013_�`�}���a_01.jpg");
	Fade("�}����100", 0, 1000, null, true);

	FadeDelete("�ϱ���", 1000, true);

	SoundPlay("@mbgm22",0,1000,true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
��������û�л�����
�������Ǽ������ѧУ������������ǰ��

��ɧ������Ҳ��ʼ�ˡ�
����Ȼʧ���¼������Ĺض���˵����������
����ʹ��ˣ��������·�������ߵ�ʱ��
���������޷�̩Ȼ��֮��

���崨���˽���������û�ڽ���¶���档
���ƺ������ɵļ��ְԱ���Լ��������������

�����ο�����һ������������Ⱥ�Уͥ�첽����

��Ӧ���Ѿ��򾯲�������������˰ɡ�
���ǣ��������崨�����ɵļ��ˣ�
��δ�ض��������ܽ�����Ⱨ���ڴ���
�����ǵ��������ֻ��������Ͷע��Ǯ�ĳ̶ȡ�

���������ͽ����ʽ���Ѳ黹��á�
��˵������ֻ�Ƿ������µ���ĳ�������������¼��
���˶��ѡ�

����������䣬����ʵʩ����Ϊ���񱣻��߻���
�Ļ��⣬���۴�С������ȫ���������������ڽҷ�
��Ļ����֮�ʣ��ƺ��й������ް�����
����������������ǲ����֮�¡�

���ܽᣬ���ܱ���һ˿ϣ����

����ˣ�ֻ�п��Լ���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateTextureSP("�}����200", 90, Center, Middle, "cg/bg/bg014_�`�}���A��_01.jpg");
	FadeDelete("�}����100", 1000, true);

	StR(1000, @0, @0,"cg/st/st�ұ�_ͨ��_�Ʒ�.png");
	StL(1000, @0, @0,"cg/st/st���w_ͨ��_�Ʒ�.png");
	FadeStL(300,false);
	FadeStR(300,true);

	SetFwC("cg/fw/fw�ұ�_�@��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
//���ұ���
<voice name="�ұ�" class="�ұ�" src="voice/ma01/0060010b43">
���ƺ���������ء�
������������ȴ��ȥ������Ұ�ĵ꣬
��ô�������е��������󰡡���

{	FwC("cg/fw/fw���w_ͨ��b.png");}
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0060020b56">
����һ��Ҳû������ʲô�����˰ɣ���

{	FwC("cg/fw/fw�ұ�_ͨ��.png");}
//���ұ���
<voice name="�ұ�" class="�ұ�" src="voice/ma01/0060030b43">
�����ٶ�����˵��û����Ȥ�Ķ������ء���

{	FwC("cg/fw/fw���w_����.png");}
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0060040b56">
���Ǿ��ǣ���վ�Ǳ��𣬻��Ǳ���������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
�������Ժ���չ�����ֵ�ͼ�����������š�
���ұ�һ��δ����Ӧ����Ĭ�ϰɡ�

�����Ǵ�ǰ��ҹ����ұ����ֺ���ɵ��㼣��ʼ׷�١�
���ɵ��ж���Χ��㣬�����������ĸ��ݵأ�
���Ǽһ�����Ŀ��

��ֻҪ��ϧ������
��ʹ������������̽Ҳ����ʲô���첻����
��Ŀǰ��״���Ѿ�����ĳ�̶ֳȵĽ����ͳɹ���

�����ڳ���С��Ϊ�˵õ��ɵĽ����鱨��
Ŀǰ�����ж��С�
��Ŀ������Ů�ԣ�������˸��ŷ������ϰ���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���k���x
	CreateColorSP("�\Ļ��", 25000, "BLACK");
	DrawTransition("�\Ļ��", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

	DeleteStA(0,true);

	Delete("�}����*");
	CreateTextureSP("�}����50", 100, Center, Middle, "cg/bg/bg012_�`�}�kǰ���x_01.jpg");

	DrawDelete("�\Ļ��", 1000, 100, "blind_01_00_1", true);



//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
�����㵽�˳�վ��

����Ȼ��·��˵�ǹض���ͨ�Ĵ���������Ȼ��
����������ͨ����������ʹ�õ���ʩ��
��������Ȼ��ǰ������ˡ�

��������·��ͬ��Ļ���������г��������
ȫ�Ǿ��˻�������ʡ�
�������ʿ��Ҳ���Գ�����������֧������ĳ��ѡ�

����ȥ�����򿥸��Ļ����˴���Ϊ������
������·�����Ȼ��һЩ�����۸���ˣ�ƱԴҲ�ȶ���

�����ڴ���ԭ�򣬲��ؿ����ɴ����ֳ�վ
�˻�ȥ���𴦵Ŀ����ԡ�
������Ҳ���ǻ��������Ʋ��������ġ�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	StR(1000, @0, @0,"cg/st/st�ұ�_ͨ��_�Ʒ�.png");
	StL(1000, @0, @0,"cg/st/st���w_ͨ��_�Ʒ�.png");
	FadeStL(300,false);
	FadeStR(300,true);

	SetFwC("cg/fw/fw���w_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050]
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0060050b56">
����ô���������￪ʼ�ȽϺ��أ���

{	FwC("cg/fw/fw�ұ�_����.png");}
//���ұ���
<voice name="�ұ�" class="�ұ�" src="voice/ma01/0060060b43">
��ѡ��̫�࣬�������ء���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0060]
���Һ��ұ�������Щ��֪����Ǻá�

����Ϊվǰ�����ı�׼ģʽ�����ʹ���ľ��ó�վ
��ͬ��������վǰҲ��һ�������֡�
��С�Եꡢ���εꡢ�̳�����Ϸ�����������кܶ���
ϲ���ĵط���

�������еط���Ѳ�ص���һ���ǲ����ܵġ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw���w_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0070]
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0060070b56">
�������ų�Ҫ��Ǯ�ĵط��ɡ���

{	FwC("cg/fw/fw�ұ�_ͨ��.png");}
//���ұ���
<voice name="�ұ�" class="�ұ�" src="voice/ma01/0060080b43">
����Щ���Ǵ����ۼ��صĳ���Ҳû��Ҫȥ�ɡ���

{	FwC("cg/fw/fw���w_���.png");}
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0060090b56">
����Ϊ����������š�
��Ϊ�Ǵ�����Ƭ����������

{	FwC("cg/fw/fw�ұ�_Ц�b.png");}
//���ұ���
<voice name="�ұ�" class="�ұ�" src="voice/ma01/0060100b43">
����Ϊ�Ǵ�����Ƭ������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0080]
��˳��һ�ᣬ����˵��������Ƭ��������ʱ��Ҫ���ģ�
��ָ���������������ֳ��ķ�������ָо���
���ú�����д�ġ���������¹����������ͬ�����溬�壬
��ʾ���Ƿ����ࡢ���ǻ۵����

��Ȼ���߳���������������ȫ����һ���¡�
Ҫע�⡣

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw���w_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0090]
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0060110b56">
����֮��ͷȥβ��ֻ��Ҫ
����ͨ�ĵط��ͺá���

{	FwC("cg/fw/fw�ұ�_Ц�b.png");}
//���ұ���
<voice name="�ұ�" class="�ұ�" src="voice/ma01/0060120b43">
����������������һ���ء���

{	FwC("cg/fw/fw���w_����.png");}
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0060130b56">
��������������Ҳ���ٺõ�ɡ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D



//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0100]
ֻ�����ѳ̶ȴӡ������ܡ��½�Ϊ�����ѡ����ѡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw�ұ�_Ц�a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0101]
//���ұ���
<voice name="�ұ�" class="�ұ�" src="voice/ma01/0060140b43">
��Ҫ��Ҫ���뼸��Ŀ�ꣿ��

{	FwC("cg/fw/fw���w_ͨ��b.png");}
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0060150b56">
�����ԵĻ��϶�Ҫ��
������ô������

{	FwC("cg/fw/fw�ұ�_ͨ��.png");}
//���ұ���
<voice name="�ұ�" class="�ұ�" src="voice/ma01/0060160b43">
��������ȥ������϶���Ҫͨ����һ����
���⸽�����������ɡ�˳���Ļ���
˵�����������ʳ���ȥ���ĸ����򡣡�

{	FwC("cg/fw/fw���w_����.png");}
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0060170b56">
���⸽����������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	DeleteStL(300,false);
	DeleteStR(300,true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0110]
��������Χ��
���ұ����Բ��顣

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	StR(1000, @0, @0,"cg/st/st�ұ�_ͨ��_�Ʒ�.png");
	StL(1000, @0, @0,"cg/st/st���w_ͨ��_�Ʒ�.png");
	FadeStL(300,false);
	FadeStR(300,true);

	SetFwC("cg/fw/fw���w_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0120]
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0060180b56">
��Ҫһ��������·�����𣿡�

{	FwC("cg/fw/fw�ұ�_�@��.png");}
//���ұ���
<voice name="�ұ�" class="�ұ�" src="voice/ma01/0060190b43">
��������û���ء��������ʴ�����·�����ˣ�
���ʳ�����������ˡ���

{	FwC("cg/fw/fw���w_ͨ��b.png");}
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0060200b56">
����վ����Ա����

{	FwC("cg/fw/fw�ұ�_����.png");}
//���ұ���
<voice name="�ұ�" class="�ұ�" src="voice/ma01/0060210b43">
������Աֻ�ῴ��վ�ڲ�������ɡ���

{	FwC("cg/fw/fw���w_ͨ��b.png");}
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0060220b56">
�����졣��

{	FwC("cg/fw/fw�ұ�_ͨ��.png");}
//���ұ���
<voice name="�ұ�" class="�ұ�" src="voice/ma01/0060230b43">
��������˯�������ء�
��Ҫ��Ҫ�Ķ���ֻ��ǰ��ҹ�����湤������
�����ԣ���

{	FwC("cg/fw/fw���w_ͨ��b.png");}
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0060240b56">
�����Ƕĵ�ʤ�������°ɡ�
��С��̯����

{	FwC("cg/fw/fw�ұ�_ͨ��.png");}
//���ұ���
<voice name="�ұ�" class="�ұ�" src="voice/ma01/0060250b43">
��������͹����ˣ�һ�㡣��

{	FwC("cg/fw/fw���w_����.png");}
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0060260b56">
�������������Ҫ����������

{	FwC("cg/fw/fw�ұ�_Ц�a.png");}
//���ұ���
<voice name="�ұ�" class="�ұ�" src="voice/ma01/0060270b43">
�������Ǳߵ�����������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	DeleteStA(300,true);

	SetVolume("@mbgm*", 1000, 0, null);

//������֦������ȥ�Х�����
//���ţֽ}�ˤ���ʤ����ˤ����

	CreateWindow("������ɥ���", 1500, 0, 0, 1024, 288, false);
	CreateWindow("������ɥ���", 1500, 0, 288, 1024, 576, false);
	SetAlias("������ɥ���","������ɥ���");
	SetAlias("������ɥ���","������ɥ���");

	CreateTextureSP("������ɥ���/�}����50", 1500, Center, Middle, "cg/bg/bg012_�`�}�kǰ���x_01.jpg");
	CreateTextureSP("������ɥ���/�}����50", 1500, Center, Middle, "cg/bg/bg012_�`�}�kǰ���x_01.jpg");

	CreateTextureSP("kana", 1000, 0, Middle, "cg/ev/resize/ev103_����֦����_a.jpg");
	CreateTextureSP("�}EV100", 900, 0, Middle, "cg/ev/ev103_����֦����_a.jpg");
	Move("kana", 0, @-200, @-200, null, true);

	Move("kana", 2000, @-200, @+100, Dxl1, false);
	Move("������ɥ���", 1500, @0, @-150, null, false);
	Move("������ɥ���", 1500, @0, @+150, null, true);

	SoundPlay("@mbgm06",0,1000,true);
	Wait(500);

	Move("������ɥ���", 1000, @0, @-150, null, false);
	Move("������ɥ���", 1000, @0, @+150, null, true);
	Delete("������ɥ���/*");
	Delete("������ɥ���");
	Delete("������ɥ���/*");
	Delete("������ɥ���");

	FadeDelete("kana", 1000, true);

	WaitKey(1000);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0130]
������ôһ˵���ҲŲ����
�����ǲ�����Ǹ��ˡ�

�����ǲ�����Լ��ӷ������һֱ�����������ࡣ

���޴����������
���·��ǶԴ����˰㡪���ֻ��Ǻ��Ӱ㡪��
Ů�ӽ������ڻ��У��������ٹ���

����ɫ���ء����ȴ���ס�
����������ɭ���У��ղ�������������ҡ����΢�硣

����磬���������κ��˵ļ�����
�����죬���ݲ����κ��˵Ķ��ϡ�

��û��һ����פ����ʦ��ǰ��
���������ϵ�������ֻ�ǴҴ�·����

�����Ǵ����������֧���ӵļ��䶼�������°ɡ�
��Ȼ��������䣬����δ���ŵ������������Ժ���
���ǻ������ͷ��˼��

������������
���������࣬������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw���w_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0140]
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0060280b56">
���㡭����

{	FwC("cg/fw/fw�ұ�_ͨ��.png");}
//���ұ���
<voice name="�ұ�" class="�ұ�" src="voice/ma01/0060290b43">
���ţ���

{	FwC("cg/fw/fw���w_ͨ��b.png");}
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0060300b56">
��������ܷ����ء���

{	FwC("cg/fw/fw�ұ�_�@��.png");}
//���ұ���
<voice name="�ұ�" class="�ұ�" src="voice/ma01/0060310b43">
�������ǰ���Ҳ�Ǵ��ɰɡ�
���治��˼�鰡����ϸһ������������ô
�������ˣ�Ϊʲô��΢�������ƿ�
�����ϱ��������Ϣ���ء���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D



//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0150]
���ұ��ķ���������ʵ��

��ӵ�м���������ϸ��˫Ŀ��������һ��ˮ׼���ϵ����ˡ�
�������Եĳ����·����һ�����ڼ�ͷ��
���������۴��ĸ��Ƕȿ������Ǹ���һ�ȵ���ò��
ȴ��Զ��ʱ������������˷羰���С�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	SetFwC("cg/fw/fw�ұ�_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0160]
//���ұ���
<voice name="�ұ�" class="�ұ�" src="voice/ma01/0060320b43">
����������Ϊ���ڿ����������ˣ�
�Ų�����İɡ���

{	FwC("cg/fw/fw���w_ͨ��b.png");}
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0060330b56">
�������ˣ���

{	FwC("cg/fw/fw�ұ�_ͨ��.png");}
//���ұ���
<voice name="�ұ�" class="�ұ�" src="voice/ma01/0060340b43">
���ڽֱ����յ��ˡ�
��������Ӧ�ú���Ż��ȥ����

{	FwC("cg/fw/fw�ұ�_�@��.png");}
//���ұ���
<voice name="�ұ�" class="�ұ�" src="voice/ma01/0060350b43">
������������

{	FwC("cg/fw/fw���w_ͨ��b.png");}
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0060360b56">
���ţ���

{	FwC("cg/fw/fw�ұ�_����.png");}
//���ұ���
<voice name="�ұ�" class="�ұ�" src="voice/ma01/0060370b43">
����������Ǹ��˵����ǲ����������ء�
��������׬����Ǯ������

{	FwC("cg/fw/fw���w_ͨ��b.png");}
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0060380b56">
��ȷʵ����ء���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0170]
�����û�˲����һ�ж��ǰ״
���������������
������ĳ�ɫ�̶Ⱦ���ֵ���Դ󳮴��͡�

����֮�������ʿ��ɡ������ʡ�
���Һ��ұ����ӵ��ͷ���߽���Ů�ӡ�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�������}�⤷���ϣţ֤���ȥ���kǰ����
	FadeDelete("�}EV100",500,true);

	StR(1000, @-50, @0,"cg/st/st���w_ͨ��_�Ʒ�.png");
	StC(800, @+300, @0,"cg/st/st�ұ�_ͨ��_�Ʒ�.png");
	FadeStC(300,false);
	FadeStR(300,true);

	SetFwC("cg/fw/fw���w_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0180]
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0060390b56">
�����ʡ�����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0190]
��ͻȻ��
����ǰ����һֻ�֣���ֹ���ҡ�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����������}
	StL(1000, @0, @0,"cg/st/st����_ͨ��_˽��.png");
	FadeStL(300,true);

	SetFwC("cg/fw/fw���w_�@��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0200]
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0060400b56">
�������ף���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0210]
���ܿ�ͽ����ˡ����ȵ����ߴ��������������Ϣ��
����Ȼ�ȵ�Ҳ�á�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw���w_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0220]
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0060410b56">
������ˣ��Ǵ�����ð�����ģ���

{	FwC("cg/fw/fw�ұ�_�@��.png");}
//���ұ���
<voice name="�ұ�" class="�ұ�" src="voice/ma01/0060420b43">
��ѽ�����������ء�
������Ҳû���ְ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

/*
	DeleteStL(200,false);
	DeleteStR(200,false);
	DeleteStC(200,true);

	StC(1000, @0, @0,"cg/st/st����_ͨ��_˽��.png");
	FadeStC(200,true);
*/

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0240]
��һĿ��Ȼ�������õ��ϸ��ˡ���ǧ��С����Ů��
վ��һ�𣬾����Ƿ�����������һ��ķ羰��
��һ��Ϊ���ӵĴ�硣��һ�����˶�����Ů����ȣ�
������ζ��Ѹ�������ӡ�󡭡�������ˣ���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	Wait(1000);

	SetVolume("@mbgm06", 2000, 0, null);

	DeleteStL(300,false);
	DeleteStR(300,false);
	DeleteStC(300,true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0241]
���������ڲ���֮ʱ����������ˡ�
�������й��������������¡�
������Ů��̧������������ϡ�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SoundPlay("@mbgm26",500,1000,true);

	StL(1100, @0, @0,"cg/st/st����֦_ͨ��_˽��c.png");
	FadeStL(300,true);

	Wait(500);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0242]
����һ˲�䡣
���Ҷ��Լ��Ѿ������˳̶ȵ���������ʵ�С�

����ʵ����̫���޴�����⡣
��
����������ˣ����������ذ����ҡ�

�����������侲˼����������ѡ�
�������޴��������뷨�����Ǵ�����ð�����ġ�
������μ����Ů�ԣ��������������ˣ�
ƾʲôҪϲ�����ء�

��һʱ��������Լ�����ϸ����

�����ǣ���˫��ϸ�������൱���
��ע���ҵ�����̫�����ᡣ
��
��������Σ���������������⡣

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	StR(1000, @-50, @0,"cg/st/st���w_ͨ��_�Ʒ�.png");
	StC(800, @+300, @0,"cg/st/st�ұ�_ͨ��_�Ʒ�.png");
	FadeStC(300,false);
	FadeStR(300,true);

	SetFwC("cg/fw/fw���w_�@��a.png");


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0250]
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0060430b56">
���롭����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0260]
���������Ϊ��˦������Ҿ������ڡ�
��˵Щʲô��˵Щʲô���ָܻ������ˡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw���w_�@��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0270]
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0060440b56">
�����ʡ�����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0280]
��˵��������
����֪����˵ʲô�á�

��������ʲô�أ�
��Ϊʲô�ᵽ�������ţ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw���w_�@��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0290]
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0060450b56">
�����ʡ�����

{	FwC("cg/fw/fw�ұ�_ͨ��.png");}
//���ұ���
<voice name="�ұ�" class="�ұ�" src="voice/ma01/0060460b43">
���۷ɣ�����ô�ˡ�������Ŷ����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//	SetVolume("@mbgm21", 200, 300, null);

//��������ȥѥ�����ɤ�����`��
	CreateTextureEX("�}EF100", 5000, Center, Middle, "cg/ef/ef042_���ô��.jpg");
	SetBlur("�}EF100", true, 3, 500, 50, false);
	CreateColorEXadd("�ե�å����", 15000, "WHITE");
	Move("�}EF100", 0, @-100, @+100, null, true);
	Zoom("�}EF100", 0, 2500, 2500, null, true);

	OnSE("se���L_����_���02",1000);
	Move("�}EF100", 200, @+100, @-100, null, false);
	Zoom("�}EF100", 200, 1200, 1200, Dxl1, false);
	Fade("�}EF100", 200, 1000, null, true);

	Wait(100);

	OnSE("se���L_����_Ź��05",1000);
	Fade("�ե�å����",0,1000,null,true);
	Delete("�}EF100");
	DeleteStC(0,false);
	DeleteStCL(0,false);
	DeleteStL(0,false);
	DeleteStR(0,true);

//shake���±������x
	CreateTextureSP("�}����1", 10, Center, Middle, "cg/bg/bg012_�`�}�kǰ���x_01.jpg");
	Fade("�}����1", 0, 1000, null, true);
	Shake("����50", 800, 5, 5, 0, 0, 500, null, false);

	Fade("�ե�å����",200,0,null,true);

	Delete("�ե�å����");

	StR(1000, @0, @0,"cg/st/st���w_ͨ��_�Ʒ�.png");
	StL(1000, @0, @0,"cg/st/st����֦_ͨ��_˽��c.png");
	FadeStL(300,false);
	FadeStR(300,true);

	SetComic(@0,@0,15);
	SetFwC("cg/fw/fw���w_ŭ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0300]
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0060470b56">
������˵�����찡��!!��

{	#voice_on_���B����֦=true;
	DeleteComic();
	FwC("cg/fw/fw����֦_Ц�.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma01/0060480a03">
���������𣿡�

{	FwC("cg/fw/fw���w_�Ӥ�b.png");}
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0060490b56">
�����������Ѿ���������!!��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	CreateColorSP("�\Ļ��", 5000, "BLACK");
	DrawTransition("�\Ļ��", 500, 0, 1000, 100, null, "cg/data/slide_01_02_0.png", true);



//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0310]
�����뱧ͷ��Ķ��ӣ�����ȴ��֪��ʱ������ǰ����
��һ��˵�ź��˺��ˣ�һ������׽ס�ҵļ���ת������
�ұ��Ȼص���ԭλ��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	DrawTransition("�\Ļ��", 500, 1000, 0, 100, null, "cg/data/slide_01_02_1.png", true);
	Delete("�\Ļ��");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0311]
��Ů�ӵ�Ŀ�Ⲣû�иı䡣

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//	SetVolume("@mbgm21", 1000, 1000, null);


	SetFwC("cg/fw/fw�ұ�_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0320]
//���ұ���
<voice name="�ұ�" class="�ұ�" src="voice/ma01/0060500b43">
�����š����۷ɡ�����������ɽ������

{	FwC("cg/fw/fw���w_ŭ��a.png");}
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0060510b56">
���ղ�����û���κ������ɱ��쵰����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0330]
�����������ĸ������ǻָ������ˣ�ƾ�辪���Ʒ���
�������Բ����л��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	SetFwC("cg/fw/fw���w_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0340]
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0060520b56">
�����ʡ���

{	FwC("cg/fw/fw����֦_ͨ��a.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma01/0060530a03">
���ǡ���

{	FwC("cg/fw/fw���w_ͨ��a.png");}
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0060540b56">
����Щ��������̡���
��������Ǹ������ס���⸽����ѧ����
���������۷ɡ���

{	FwC("cg/fw/fw����֦_ͨ��a.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma01/0060550a03">
���ǡ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0350]
��Ů�ӵ�ͷ��
���漴��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����֦_Ц�.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0360]
//������֦��
<voice name="����֦" class="����֦" src="voice/ma01/0060560a03">
���۷ɡ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0370]
����Դ����ӵı���㣬�������ҵ����֡�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw���w_�@��a.png");


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0380]
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0060570b56">
����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0390]
���侲��������侲��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw���w_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0400]
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0060580b56">
���⡢�⡢��λ�ǵ����ұ�����

{	FwC("cg/fw/fw�ұ�_ͨ��.png");}
//���ұ���
<voice name="�ұ�" class="�ұ�" src="voice/ma01/0060590b43">
�����ǵ��ǡ�˳��һ��Ӹղſ�ʼ�۷�����
��ֵı��ֲ�����ʲô��Ϊ��񱣬ֻ����
��Ů�����ǰ��ЩƮƮȻ���ѣ�������
�����Ǹ�Ϊ����Բ���������������

{	FwC("cg/fw/fw���w_ŭ��b.png");}
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0060600b56">
������Թ���ȥ��!!��

{	FwC("cg/fw/fw����֦_ͨ��a.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma01/0060610a03">
����ã������������

{	FwC("cg/fw/fw�ұ�_Ц�b.png");}
//���ұ���
<voice name="�ұ�" class="�ұ�" src="voice/ma01/0060620b43">
���ۣ�����ס�ҵĳƺ����۷ɣ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0410]
��ֵ�ø�����

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw���w_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0420]
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0060630b56">
��˵������
�������һֱ������������˰ɣ���

{	FwC("cg/fw/fw�ұ�_ͨ��.png");}
//���ұ���
<voice name="�ұ�" class="�ұ�" src="voice/ma01/0060640b43">
���۷ɣ�������˵���������Ǹ�
û������ϰ�ԵĶ���һ��Ŷ����

{	FwC("cg/fw/fw���w_����.png");}
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0060650b56">
�����Ǹ�������˵����

{	FwC("cg/fw/fw����֦_ͨ��b.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma01/0060660a03">
�������ʣ����Ƿ���������ÿ������
�Դ�ı�����ˣ���

{	FwC("cg/fw/fw���w_ͨ��a.png");}
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0060670b56">
�������ԡ����������˼����

{	FwC("cg/fw/fw�ұ�_����.png");}
//���ұ���
<voice name="�ұ�" class="�ұ�" src="voice/ma01/0060680b43">
��������ʵ��¶<RUBY text="�ãУ�">�����</RUBY>���ܲ��ĶԻ��ء���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0430]
���޻�������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����֦_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0440]
//������֦��
<voice name="����֦" class="����֦" src="voice/ma01/0060690a03">
�����ź������Ҹ������ֲ��á�
�������ﵯ���������ջ��ǵ�һ�Ρ���

{	FwC("cg/fw/fw���w_���a.png");}
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0060700b56">
�������������𡭡���

{	FwC("cg/fw/fw�ұ�_����.png");}
//���ұ���
<voice name="�ұ�" class="�ұ�" src="voice/ma01/0060710b43">
�����ź��أ��۷ɡ���

{	FwC("cg/fw/fw���w_ͨ��b.png");}
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0060720b56">
��ι����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0450]
����˵�ź����಻��ò��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����֦_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0460]
//������֦��
<voice name="����֦" class="����֦" src="voice/ma01/0060730a03">
���ǳ���Ǹ��
���ƺ�û�а���æ����

{	FwC("cg/fw/fw���w_�@��a.png");}
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0060740b56">
������������������š���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0470]
���������ϣ�Ů�Ӵ����˼硣
�����ǲŸ�˵��Ǹ���һ�æ���֡�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw���w_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0480]
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0060750b56">
��Ҳ����ʲô���˵��¡�����

{	FwC("cg/fw/fw�ұ�_Ц�b.png");}
//���ұ���
<voice name="�ұ�" class="�ұ�" src="voice/ma01/0060760b43">
����������˵�������ǹ���<?>
{	OnSE("se���L_����_Ź��04",700);
	DeleteFwC(0,false);}
ѽ����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0490]
����һ����Ĵָ����<RUBY text="������">������ֹ</RUBY>�ɹ���

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	SetFwC("cg/fw/fw����֦_ͨ��b.png");


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0500]
//������֦��
<voice name="����֦" class="����֦" src="voice/ma01/0060770a03">
�����𡭡���
����ô���٣�������Ϊ����ָ�����򡣡�

{	FwC("cg/fw/fw���w_ͨ��b.png");}
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0060780b56">
�����򣿡�

{	FwC("cg/fw/fw����֦_Ц�.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma01/0060790a03">
���������ҽ�����Щ���ˡ�
����ʵ���ǡ�����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���ɥ��`�󡣥���ȥ�Х��Ҥȏ���
	OnSE("se����_�S��_����ȥ�Х�01",1000);


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0510]
���·��ʺ�㲦����һ�����ҡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����֦_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0520]
//������֦��
<voice name="����֦" class="����֦" src="voice/ma01/0060800a03">
��������������

{	FwC("cg/fw/fw���w_ͨ��b.png");}
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0060810b56">
���ǡ���

{	FwC("cg/fw/fw����֦_ͨ��b.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma01/0060820a03">
������һ�����ռ��ʦ����

{	FwC("cg/fw/fw���w_�@��a.png");}
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0060830b56">
������!?��

{	FwC("cg/fw/fw����_ͨ��a.png");}
//�����衿
<voice name="����" class="����" src="voice/ma01/0060840a04">
���������֡���

{	FwC("cg/fw/fw���w_ͨ��b.png");}
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0060850b56">
�����������������ǣ���

{	FwC("cg/fw/fw����֦_Ц�.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma01/0060860a03">
�����ó��ô������������෨����ռ������

{	FwC("cg/fw/fw�ұ�_�@��.png");}
//���ұ���
<voice name="�ұ�" class="�ұ�" src="voice/ma01/0060870b43">
������һ�������ء���

{	FwC("cg/fw/fw����֦_ͨ��b.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma01/0060880a03">
����������˵��һ�¡���

{	FwC("cg/fw/fw���w_����.png");}
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0060890b56">
�����ò���û�µġ�����������֮��
�᲻̫�ð�ĸо�����

{	#voice_on_���}����=true;
	FwC("cg/fw/fw����_����.png");}
//�����衿
<voice name="����" class="����" src="voice/ma01/0060900a04">
����С�㣬�ǿ��ǹ�˾���ܡ���

{	FwC("cg/fw/fw����֦_����.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma01/0060910a03">
����ȷ��ˡ���˾���ܱ��뱣�ء�
�����ռ�����ɳ��̿;��鷳�ˡ���

{	FwC("cg/fw/fw����_ͨ��a.png");}
//�����衿
<voice name="����" class="����" src="voice/ma01/0060920a04">
������ǿϮͻ��ս��ռ��ʦҲ���ܻ�Ϯ����������

{	FwC("cg/fw/fw�ұ�_�@��.png");}
//���ұ���
<voice name="�ұ�" class="�ұ�" src="voice/ma01/0060930b43">
���Ѹ��������ϵ�
������ֵط�ָ�����ò��ã��۷ɣ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0530]
�����ϰɡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���ɥ��`��
	OnSE("se����_�S��_����ȥ�Х�01",1000);

	SetFwC("cg/fw/fw����֦_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0540]
//������֦��
<voice name="����֦" class="����֦" src="voice/ma01/0060940a03">
����ô����������ռ�����δ���ɡ���

{	FwC("cg/fw/fw���w_���a.png");}
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0060950b56">
���Ǹ���������˼������˵�Ҳ�̫ϲ��
������ֵķ���ռ��������˵�Ҿ���
������Ϊ��ʵ��������ĺ����Ѱɡ�
��������������ʲô�������

//���ɥ���ɥ��`��
{	OnSE("se����_�S��_����ȥ�Х�02",1000);
	FwC("cg/fw/fw����֦_�@��.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma01/0060960a03">
�������ˣ���

{	FwC("cg/fw/fw���w_���b.png");}
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0060970b56">
����Ȼ�ƺ��������˵�Ļ���ȴ�������ء�
��˵ʹ�������Ļ���Ӧ���ǿ�����
Ӧ���������˲Ŷ԰ɣ�����������
��������������������ˡ���

{	FwC("cg/fw/fw�ұ�_Ц�b.png");}
//���ұ���
<voice name="�ұ�" class="�ұ�" src="voice/ma01/0060980b43">
�������ų�������Ĳ�����˧Ŷ���۷ɡ���

{	FwC("cg/fw/fw���w_���b.png");}
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0060990b56">
�����졣��

{	FwC("cg/fw/fw����֦_ͨ��b.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma01/0061000a03">
�������۷ɡ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//	SetVolume("@mbgm21", 1000, 0, null);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0560]
��ռ��ʦ�����������ҵ����֡�
�����ı�����ֿ�����˸е�����ĳ̶ȡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����֦_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0570]
//������֦��
<voice name="����֦" class="����֦" src="voice/ma01/0061010a03">
����������ڵȺ����㡣
���޷����������������

{	FwC("cg/fw/fw���w_����.png");}
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0061020b56">
���������˰�����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0580]
�����ˣ���������ֶ��������ڵĻ���
ռ���߾��޷������˰ɡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_���.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0590]
//�����衿
<voice name="����" class="����" src="voice/ma01/0061030a04">
����ô��С�㣬�Ⱥ������������ǣ���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���ɥ��`��
	OnSE("se����_�S��_����ȥ�Х�01",1000);
	Wait(1000);
	SetFwC("cg/fw/fw����֦_�@��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0591]
//������֦��
<voice name="����֦" class="����֦" src="voice/ma01/0061040a03">
���������������Ϊ���ձ�����֮��
�������ҿ��ǳ��ܻ�ӭ������ʲô����Ů�˶�
�����ɸ㶨����Ҷ��ƺ������ӵ��¡���
�����������ڵȺ����㣡��

//�����`��
{	SetComic(@0,@0,8);
	FwC("cg/fw/fw���w_�@��b.png");}
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0061050b56">
����Ҫ������������!!��

{	DeleteComic();
	FwC("cg/fw/fw�ұ�_Ц�a.png");}
//���ұ���
<voice name="�ұ�" class="�ұ�" src="voice/ma01/0061060b43">
���۷ɣ���Ȼ��ҵ֮�����ǻ������ѣ�
����������Ұ�����

{	FwC("cg/fw/fw���w_ŭ��b.png");}
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0061070b56">
������յ�ȫ����������Ұ�����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0620]
����������䡣

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����֦_Ц�.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0630]
//������֦��
<voice name="����֦" class="����֦" src="voice/ma01/0061080a03">
������ġ����ѵķ�������һ������

{	FwC("cg/fw/fw���w_���b.png");}
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0061090b56">
������˵���������֮��İɡ���

//���ɥ��`��
{	OnSE("se����_�S��_����ȥ�Х�01",1000);
	SetVolume("@mbgm26", 1000, 0, null);
	FwC("cg/fw/fw����֦_ͨ��b.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma01/0061100a03">
��ֻҪ�������֣�����޷�������������

{	FwC("cg/fw/fw���w_ͨ��b.png");}
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0061110b56">
��������

{	FwC("cg/fw/fw����֦_����.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma01/0061120a03">
���뿪���֣������۷ɡ�
��Խ��Խ�á����ڣ����ϾͿ����뿪����

//������֦��
<voice name="����֦" class="����֦" src="voice/ma01/0061130a03">
����ͼ�����̸һ�£�
������һ���������ġ���

{	FwC("cg/fw/fw���w_�@��a.png");}
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0061140b56">
������˵ʲô�뿪������ôͻȻ����

{	FwC("cg/fw/fw����֦_ͨ��b.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma01/0061150a03">
��ɴ������

{	FwC("cg/fw/fw����_ͨ��a.png");}
//�����衿
<voice name="����" class="����" src="voice/ma01/0061160a04">
���ڡ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SoundPlay("@mbgm18",0,1000,true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0650]
������Ů�Ӵߴ٣���������ǰ����
�����Ϲ��Ͼ��صݸ�����ʲô��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw���w_ͨ��b.png");


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0660]
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0061170b56">
���������ǣ���

{	FwC("cg/fw/fw�ұ�_�@��.png");}
//���ұ���
<voice name="�ұ�" class="�ұ�" src="voice/ma01/0061180b43">
���ǳ�Ʊ�ء���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0670]
�����ȫ��ͨ��ͷ�ȶ��ڳ�Ʊ��

����������Ϊ�Ǵ������˿��û��
��ֻҪ��������Ʊ��һ��ʱ���ڣ���͹���������·
���������޴γ�����������Ϊ��ͷ�ȳ˿͡�
����߼۸�ĳ�Ʊ����Ч�ڻ��а��ꡣ

��������ʹ�԰ײ˼�����Ҳֵ�����Ķ�����
���൱�������ι���Ա�����µĹ��ʡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw���w_�@��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0680]
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0061190b56">
������Ц�İɣ���

{	FwC("cg/fw/fw����֦_ͨ��b.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma01/0061200a03">
��������ʹ�ã�������������Ը�Ļ�����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0690]
��Ů����΢Ц��
����������濪ʼ��һֱ��

���������ʼ��
�����������Ƿ�һ�������֮ʱ��ʼ��

�����������Ц�Ļ������ǲ��Ǵ������ʼ��
һ�ж�ֻ����Ц��
��
������������Ҳ�������ڡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw���w_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0700]
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0061210b56">
������������

{	FwC("cg/fw/fw�ұ�_�@��.png");}
//���ұ���
<voice name="�ұ�" class="�ұ�" src="voice/ma01/0061220b43">
���۷ɡ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0710]
������ֹ���������ҵ��ұ���
�������׵ġ���һ������������ʲô��

��������ô�ã���㲻���ܲ�֪����
�������ڲ�����Ҫ��û����ġ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw���w_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0720]
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0061230b56">
��ռ��ʦ��㡣��

{	FwC("cg/fw/fw����֦_ͨ��b.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma01/0061240a03">
���ǡ���

{	FwC("cg/fw/fw���w_ͨ��a.png");}
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0061250b56">
����ΪʲôҪ���������飬
˵ʵ������ȫ�޷���⡣
�����ǡ������������������Ϊ�ҵ��ġ���

{	FwC("cg/fw/fw���w_Ц�a.png");}
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0061260b56">
���ǳ���л�㡣��

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0730]
���ҵ�����ͷ��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����֦_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0740]
//������֦��
<voice name="����֦" class="����֦" src="voice/ma01/0061270a03">
������������

{	FwC("cg/fw/fw����_ͨ��b.png");}
//�����衿
<voice name="����" class="����" src="voice/ma01/0061280a04">
��������

{	FwC("cg/fw/fw���w_ͨ��a.png");}
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0061290b56">
����������������㡣��

{	FwC("cg/fw/fw����֦_ͨ��b.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma01/0061300a03">
��Ϊ�Σ���

{	FwC("cg/fw/fw���w_ͨ��a.png");}
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0061310b56">
��û�н��ܵ����ɡ������������ԭ��
���������ĵ�Ϊ�ҵ��ģ����Ѿ��ǳ�ֵ����ɡ���

{	FwC("cg/fw/fw���w_ͨ��b.png");}
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0061320b56">
�����ǣ��������ڲ��С�
���һ��б���Ҫ�������������顣��

{	FwC("cg/fw/fw����֦_ͨ��b.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma01/0061330a03">
�����Ǻ���Ҫ�������𣿡�

{	FwC("cg/fw/fw���w_ͨ��a.png");}
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0061340b56">
���ǵġ���

{	FwC("cg/fw/fw����֦_����.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma01/0061350a03">
��Ϊ���Ǽ��£�����ġ���
����ʹ���Ͽ���������ɣ�Ҳ������������

{	FwC("cg/fw/fw���w_Ц�a.png");}
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0061360b56">
���ǵġ�
�������ڱ���Ҫȥ���ģ�����
�����ҵ�ͬ�顣��

//�����w��
<voice name="���w" class="���w" src="voice/ma01/0061370b56">
������������ԭ�򣬲����ҷ���ʲô����
�����Ǹ�ʱ���ҵ�ͬ��Ҳ������ҡ���

{	FwC("cg/fw/fw�ұ�_ͨ��.png");}
//���ұ���
<voice name="�ұ�" class="�ұ�" src="voice/ma01/0061380b43">
��������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0750]
��Ů�ӱ�����˫����
����������������������һ�Σ��������ҡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���ɥ��`��
	OnSE("se����_�S��_����ȥ�Х�01",1000);

	SetFwC("cg/fw/fw����֦_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0760]
//������֦��
<voice name="����֦" class="����֦" src="voice/ma01/0061390a03">
��������������Ϸ���ָʾ�����ˡ�����

{	FwC("cg/fw/fw�ұ�_����.png");}
//���ұ���
<voice name="�ұ�" class="�ұ�" src="voice/ma01/0061400b43">
���ף����ܾ��ú����е���֡���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0770]
����ֹ���е�ɡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����֦_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0780]
//������֦��
<voice name="����֦" class="����֦" src="voice/ma01/0061410a03">
�������ܿ����ģ������۷ɱ������¼�Ϊֹ��
��֮����������������
���ܷ�սʤ���ˣ�ȡ�������Լ�����

{	FwC("cg/fw/fw���w_ͨ��b.png");}
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0061420b56">
��������

{	FwC("cg/fw/fw����֦_ͨ��b.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma01/0061430a03">
���������е����飬ȴ��˵Щ�������Ļ���
��ԭ���ҡ�
����������飬�������ǰɡ���

{	FwC("cg/fw/fw���w_����.png");}
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0061440b56">
����ô�ᡣ�Ǹ������Ҳ�֪������ô˵�źá�
�����ǣ������û�и���������š���

{	FwC("cg/fw/fw���w_Ц�a.png");}
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0061450b56">
�����������Ҳ������ǵġ�
�������Ҳ������ǡ���

{	FwC("cg/fw/fw����֦_����.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma01/0061460a03">
������лл�㡣��

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0790]
������͵ش������ҡ�
����������Ⱦ����Щ����졣

�����ۡ������Ǹ����ˡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw�ұ�_Ц�b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0800]
//���ұ���
<voice name="�ұ�" class="�ұ�" src="voice/ma01/0061470b43">
����ѽ����Ȼ�Һ����е㱻�ų����⣬������
�ܿ���Ŷ������Ҳ�ǳ�����
�������СС���ﲻ�ɾ��⡣��

{	FwC("cg/fw/fw����֦_Ц�.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma01/0061480a03">
����ѽ��ѽ��лл����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0810]
���ұ��ݳ��˲�֪ʲôʱ����İ�װ��֭��
���㻹�������ҵ�������Ľ�ĳ̶��ء�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	SetFwC("cg/fw/fw����֦_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0820]
//������֦��
<voice name="����֦" class="����֦" src="voice/ma01/0061490a03">
��ɴ������

{	FwC("cg/fw/fw����_ͨ��a.png");}
//�����衿
<voice name="����" class="����" src="voice/ma01/0061500a04">
���ڡ���

{	FwC("cg/fw/fw����֦_Ц�.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma01/0061510a03">
����ô��λ�����Ǿʹ˸���ˡ���

{	FwC("cg/fw/fw����_Ц�.png");}
//�����衿
<voice name="����" class="����" src="voice/ma01/0061520a04">
��ʧ���ˡ���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//	SetVolume("@mbgm33", 500, 0, null);

	DeleteStC(300,false);
	DeleteStR(300,false);
	DeleteStCL(300,false);
	DeleteStL(300,true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0830]
���Գ�ռ��ʦ��Ů��������ף��Գ����ֵ�
�ϸ����������һ������һͬ��������������Ⱥ��
��ȥ��

��Ŀ��������Զȥ�ı�Ӱ��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	StR(1000, @0, @0,"cg/st/st�ұ�_ͨ��_�Ʒ�.png");
	StL(1000, @0, @0,"cg/st/st���w_ͨ��_�Ʒ�.png");
	FadeStL(300,false);
	FadeStR(300,true);


	SetFwC("cg/fw/fw�ұ�_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0840]
//���ұ���
<voice name="�ұ�" class="�ұ�" src="voice/ma01/0061530b43">
����������ӡ����̵��������ء���

{	FwC("cg/fw/fw���w_ͨ��a.png");}
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0061540b56">
���ǰ�����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0850]
��һ���޷����ǰɡ�
���ǲ���˼��ģ����е�Ů�ӡ�

�������ټ���
�����������������˵���ĵ����

���ڳ�վǰ�ķ��ӹ⾰�У���󿴵��ı�Ӱ��
���·�ͻ����ʳ���һ�㣬��ס���졪��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw���w_ͨ��b.png");
	SetVolume("@mbgm18", 5000, 0, null);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0860]
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0061550b56">
�������ұ�����

{	FwC("cg/fw/fw�ұ�_ͨ��.png");}
//���ұ���
<voice name="�ұ�" class="�ұ�" src="voice/ma01/0061560b43">
����ô����

{	FwC("cg/fw/fw���w_ͨ��b.png");}
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0061570b56">
����������Ǹ�����ʲô����

{	FwC("cg/fw/fw�ұ�_ͨ��.png");}
//���ұ���
<voice name="�ұ�" class="�ұ�" src="voice/ma01/0061580b43">
���Ǹ�����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0870]
���������°㡣
�������˿����ˡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw�ұ�_Ц�b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0880]
//���ұ���
<voice name="�ұ�" class="�ұ�" src="voice/ma01/0061590b43">
����ʵ�Ҹ��������ƺ���Ȼ��Ϊ�����еģ�
���С����Ҳ�г��۵ģ�
�ٷְٴ���Ȼ��������ˮ����

{	SetComic(@0,@0,15);
	FwC("cg/fw/fw���w_ŭ��b.png");}
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0061600b56">
���쵰��������������!!��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	DeleteStA(300,true);

//���֥�å�������
//���kǰ
	CreateColorEX("�\Ļ��", 25000, "BLACK");
	Fade("�\Ļ��", 2000, 1000, null, true);

	StR(1000, @0,@0,"cg/st/st����֦_ͨ��_˽��b.png");
	StL(1000, @0,@0,"cg/st/st����_ͨ��_˽��.png");
	FadeStR(0,true);
	FadeStL(0,true);

	WaitKey(3000);

	DrawDelete("�\Ļ��", 1000, 100, "blind_01_00_1", true);

	SoundPlay("@mbgm30",0,1000,true);


	SetFwC("cg/fw/fw����_���.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0890]
//�����衿
<voice name="����" class="����" src="voice/ma01/0061610a04">
����С�㡭��������ľͿ������𣿡�

{	FwC("cg/fw/fw����֦_ͨ��b.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma01/0061620a03">
���š���

{	FwC("cg/fw/fw����_ͨ��b.png");}
//�����衿
<voice name="����" class="����" src="voice/ma01/0061630a04">
��ʨ�Ӻ���µ�ָ�⣬�����Ѿ�
������ǰ�ˡ���

{	FwC("cg/fw/fw����֦_ͨ��b.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma01/0061640a03">
����ʹ��ˡ�
����������Ҳ�����Լ�ѡ�񡣡�

{	FwC("cg/fw/fw����_ͨ��a.png");}
//�����衿
<voice name="����" class="����" src="voice/ma01/0061650a04">
������ȷʵ��ˡ���

{	FwC("cg/fw/fw����֦_ͨ��b.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma01/0061660a03">
�����������ģ�ֻ������ָʾ���ˡ�
��ֱ������һ�졭�����������˾�ս֮ʱ��
����������΢���İ�������

{	FwC("cg/fw/fw����_���.png");}
//�����衿
<voice name="����" class="����" src="voice/ma01/0061670a04">
���������ԡ�����

{	FwC("cg/fw/fw����֦_ͨ��a.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma01/0061680a03">
��ץ���ɣ�ɴ����
������Ҳ�������ر����ˡ���

{	FwC("cg/fw/fw����_ͨ��a.png");}
//�����衿
<voice name="����" class="����" src="voice/ma01/0061690a04">
���ǡ���

{	FwC("cg/fw/fw����֦_ͨ��b.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma01/0061700a03">
�����⡣��

{	FwC("cg/fw/fw����_ͨ��b.png");}
//�����衿
<voice name="����" class="����" src="voice/ma01/0061710a04">
���ǡ���

{	FwC("cg/fw/fw����֦_����.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma01/0061720a03">
����ƿ�¸���ս������ζ����������ɢ��
Ӣ�����ϣ�Ҫ��Ҫ�Ⱥȿ�����

{	FwC("cg/fw/fw����_Ц�.png");}
//�����衿
<voice name="����" class="����" src="voice/ma01/0061730a04">
���������Ҽ���ܾ�����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	ClearWaitAll(1000, 2000);


..//������ָ��
//�Υե����롡"ma01_007.nss"

}



