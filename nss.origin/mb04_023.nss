//<continuation number="510">


chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mb04_023.nss_MAIN
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
	#ev160_����=true;

	#bg047_�������_�b_02=true;
	#bg002_��a_02=true;
	#ev160_����=true;
	#ev148_һ���ȣ�_a=true;
	#ev144_Ů���_�Α���Ҋ�ݤ���һ��_d=true;
	#ev141_���ڣ֣Ӵ�������_a=true;
	#ev112_һ���򤪊������ä��������=true;
	#ev161_һ���ο�Ԫ���å�_a=true;
	#ev161_һ���ο�Ԫ���å�_b=true;


	//����`�ȥե饰���x�k֫���Τ�GameName
	$PreGameName = $GameName;

	$GameName = "mb04_024.nss";

}

scene mb04_023.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

..//������ָ��
//ǰ�ե����롡"mb04_022.nss"

//��������E��bg047aϦ
//������
//�������_���������
//����פ���
//��һ��
	PrintBG("�ϱ���", 30000);
	CreateColorSP("�}��ܞ", 15000, "#000000");
	OnBG(100,"bg047_�������_�b_02.jpg");
	FadeBG(0,true);
	Delete("�ϱ���");
	FadeDelete("�}��ܞ", 2000, true);

	StL(1000, @0, @0,"cg/st/3d����_����_ͨ��.png");
	CreateSE("SE01","se����_����_�z�i��03");
	MusicStart("SE01",0,1000,0,1000,null,false);
	Move("@StL*", 300, @30, @0, Dxl1, false);
	FadeStL(300,true);

	WaitPlay("SE*", null);
	WaitKey(500);

//��������ݳ��������_�����������!?��

	CreateSE("SE01b","se����_��x_�k��03");
	CreateSE("SE01c","se���L_����_��ꪏ���02");
	MusicStart("SE01b",0,1000,0,1000,null,false);
	MusicStart("SE01c",0,1000,0,1000,null,false);
	CreateColorEXadd("�}�ե�", 5000, "#FFFFFF");
	Fade("�}�ե�", 600, 1000, null, true);
	DeleteStA(0,true);
	WaitKey(100);
	FadeDelete("�}�ե�", 600, true);

	SetFwC("cg/fw/fwһ��_���x.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
//��һ����
<voice name="һ��" class="һ��" src="voice/mb04/0230010a02">
��������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//����ţ������
	StL(1000, @0, @370,"cg/st/3d������ţ��_����.png");
	Rotate("@StL*", 0, @0, @180, @0, null,true);
	FadeStL(300,true);

	SetFwC("cg/fw/fw������ţ��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
//�����ڡ�
<voice name="����" class="����" src="voice/mb04/0230020b40">
������������
������˵�ͬ������ڶ����������ľ��ӷ�����
����������


//�����ڡ�
<voice name="����" class="����" src="voice/mb04/0230030b40">
��Ҫ��ô�죿��


{	FwC("cg/fw/fwһ��_���x.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb04/0230040a02">
��������


{	FwC("cg/fw/fw������ţ��_ͨ��.png");}
//�����ڡ�
<voice name="����" class="����" src="voice/mb04/0230050b40">
�������ţ���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	DeleteStA(300,false);

//�����ä��á����⤬�l���ĤäƤ���
	CreateSE("SE01","se����_����_��ʿ����01");
	MusicStart("SE01",0,1000,0,1000,null,false);

	$�Еr�g=RemainTime("SE01");
	WaitKey($�Еr�g);

	SetFwC("cg/fw/fw�\��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
//���\����
<voice name="�\��" class="�\��" src="voice/mb04/0230060b26">
�����ڴ��ˣ�
�����ڼ������ˡ���


{	FwC("cg/fw/fwһ��_����.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb04/0230070a02">
������������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���\��ͯ�ӡ��@��
	StR(1000, @0, @0,"cg/st/st�@��_ͨ��_˽��a.png");
	StL(1000, @0, @0,"cg/st/st�\��_ͨ��_˽��.png");

	SetVolume("SE*", 1000, 0, null);
	FadeStR(300,false);
	WaitKey(100);
	FadeStL(300,true);

	SetFwC("cg/fw/fw�@��_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
//���@�ӡ�
<voice name="�@��" class="�@��" src="voice/mb04/0230080b28">
����������Ļ���Խ��Խ���ҾͲ����ǻ᲻
���������
���Һù���ȷ���ˡ���


{	FwC("cg/fw/fwһ��_ͨ��b.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb04/0230090a02">
��С�㡭����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SoundPlay("@mbgm19",0,1000,true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050]
�������Բ��ҵ�ӣ��С�㡣�����ĵܵܡ�
����󻹸�����������ʿ��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw�@��_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0060]
//���@�ӡ�
<voice name="�@��" class="�@��" src="voice/mb04/0230100b28">
��������ƽ�����£�����̫���ˡ�����


{	FwC("cg/fw/fw�\��_ͨ��.png");}
//���\����
<voice name="�\��" class="�\��" src="voice/mb04/0230110b26">
���������һ�½�㡣
�����ڲ�����ף�ط��ʱ�򡣡�


//���\����
<voice name="�\��" class="�\��" src="voice/mb04/0230120b26">
����Ȼ�Ѿ��������ڴ����ˣ���ô��Ѹ���뿪
����ɡ���
���⸽������������֮�⣬���н�פ���ľ��ӡ���


{	FwC("cg/fw/fw�@��_ͨ��b.png");}
//���@�ӡ�
<voice name="�@��" class="�@��" src="voice/mb04/0230130b28">
������û��
�����ڴ��ˣ���֪�����ڵ������𣿡�


{	FwC("cg/fw/fwһ��_����.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb04/0230140a02">
����������ʲô����֪����
����Ϊһֱ��׷���Ǻš�����


{	FwC("cg/fw/fw�@��_ͨ��a.png");}
//���@�ӡ�
<voice name="�@��" class="�@��" src="voice/mb04/0230150b28">
����ô�Ҿͼ򵥵�˵��һ�¡�
�����Ǳ�����׼�����ƻ�ȥ���־�����
�¡�����


{	FwC("cg/fw/fw�@��_����.png");}
//���@�ӡ�
<voice name="�@��" class="�@��" src="voice/mb04/0230160b28">
��ȴ���ж�֮ǰ��֪�����±��ջ١���


{	FwC("cg/fw/fwһ��_����.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb04/0230170a02">
������������


{	FwC("cg/fw/fw�\��_ͨ��.png");}
//���\����
<voice name="�\��" class="�\��" src="voice/mb04/0230180b26">
���������������δ����
������ֵ��ǣ�Ϯ�������µ�ܥԽ����������
���裬Ҳ������֮��֪ȥ���ˡ�����


{	FwC("cg/fw/fw�@��_ͨ��a.png");}
//���@�ӡ�
<voice name="�@��" class="�@��" src="voice/mb04/0230190b28">
����֮������������¸����޷���ȡ�ж�����
�����Ǿ�Ǳ�������ռ��鱨������û��÷���
�뵺����������������Ϊֹ��δ�й������Ǻ�
�¼�����


{	FwC("cg/fw/fw�\��_ͨ��.png");}
//���\����
<voice name="�\��" class="�\��" src="voice/mb04/0230200b26">
�����������䣬��פ����ʼ�ж���������Ҳ
û�зŹ���λ��ᣬ�����ڸ��ط�����ͻ��
��������񣬹ض�һ������������ȫ�����˻�
��֮�С���


{	FwC("cg/fw/fw�@��_ͨ��b.png");}
//���@�ӡ�
<voice name="�@��" class="�@��" src="voice/mb04/0230210b28">
�������뾡����Щ�����ܼ������顣���Ǽ���
������ƽ�����£�һ��̽Ѱ�������䣬һ��Ѱ
�����ڴ��ˡ�
������������������������̫���ˡ���


{	FwC("cg/fw/fw�\��_�Ŀ.png");}
//���\����
<voice name="�\��" class="�\��" src="voice/mb04/0230220b26">
��û������Ϊֹһֱ��������Ŀ�ĵ���Ѱ��
���Ȳ�˵��Щ������������һ�½��Ĳ��԰ɡ���


{	FwC("cg/fw/fw�\��_ͨ��.png");}
//���\����
<voice name="�\��" class="�\��" src="voice/mb04/0230230b26">
�����ڴ��ˡ����Ǿ�������������Ϊ���ǵ�ͷ
�졣�ʶ������������־���ж���
�����ǡ�����������ȡ��һǧ��ͬ־��������
Ҫ��β�ȡ�ж��أ���


{	FwC("cg/fw/fw�@��_ͨ��a.png");}
//���@�ӡ�
<voice name="�@��" class="�@��" src="voice/mb04/0230240b28">
��������������������ã֮�С�
������Ӧ��һ����Ѱ�����µ����䣬һ��׼��
�Ż��ж��𡭡�����


{	FwC("cg/fw/fwһ��_����.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb04/0230250a02">
��������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetVolume("@mbgm*", 2000, 0, null);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0070]
��������������
����̬�Ѿ���չ����ȵز��˰���

��ʧȥ��ƽ��
��ս�ҿ�ʼ��

���Ѿ�����������ɥʧ�����������ӽ����󽫻��и���
������ȥ��
������������������µĽ�����ǿ������޷�����Ķ�
�С�

��Ȼ��ʵ���ϣ���һ���������Լ�����־�����ġ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw������ţ��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0080]
//�����ڡ�
<voice name="����" class="����" src="voice/mb04/0230260b40">
����������
�����Ȳ����ڣ�Ҳ����ͣ�½Ų�����


//�����ڡ�
<voice name="����" class="����" src="voice/mb04/0230270b40">
���������İɣ�������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0090]
������
������û��

���ҽ����������е�����������������·��ǰ����

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SoundPlay("@mbgm17",0,1000,true);

	SetFwC("cg/fw/fwһ��_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0100]
//��һ����
<voice name="һ��" class="һ��" src="voice/mb04/0230280a02">
��һ���վɡ�
����ʹ�������˲����ˣ��ҡ�������Ҫ������
��Ҳ���ɲ��䡣��


{	FwC("cg/fw/fw�\��_ͨ��.png");}
//���\����
<voice name="�\��" class="�\��" src="voice/mb04/0230290b26">
���������ڴ��ˡ���


{	FwC("cg/fw/fw�@��_ͨ��b.png");}
//���@�ӡ�
<voice name="�@��" class="�@��" src="voice/mb04/0230300b28">
����ô������


{	FwC("cg/fw/fwһ��_ͨ��a.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb04/0230310a02">
��ս������


{	FwC("cg/fw/fwһ��_ͨ��b.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb04/0230320a02">
������פ��ǰ�����ԣ��Ǿ����פ��ս����
�����������ջٳ����Ǿ���������ս������


//��һ����
<voice name="һ��" class="һ��" src="voice/mb04/0230330a02">
��Σ���������������ˣ��������ǵĵ��ˡ���


{	FwC("cg/fw/fw�\��_�@��.png");}
//���\����
<voice name="�\��" class="�\��" src="voice/mb04/0230340b26">
��Ŷ������


{	FwC("cg/fw/fwһ��_���x.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb04/0230350a02">
�������������߶������ȥ��ֻ�����²���
�˺�����Ҳ��������Ӷ�����Ǿ͹��ˡ�
��������һ�����ң��������ǵ�Ŀ�ꡣ��


//��һ����
<voice name="һ��" class="һ��" src="voice/mb04/0230360a02">
���������ǵġ������塣��


{	FwC("cg/fw/fw�\��_ͨ��.png");}
//���\����
<voice name="�\��" class="�\��" src="voice/mb04/0230370b26">
������������־��
���Ѿ�ʧȥ�˼�����������ȸԲ�һ�塭��Ϊ
��������������ǽ��������ֵ����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0110]
������ͯ����ܵغ��š�
�������Ե�ӣ��С��Ҳ���˵�ͷ��

�����Ƕ������ҡ�
������׷�������н��ĵ�·��

�����ǽ��Ҳ����ս���ɡ���Ϊ���ҵ����Ρ�
�����Ҳ��ɱ¾���߱�ɱ�ɡ�Ϊ���ҵ����塣

������������Բ�����ȷ�ġ�
����ʹ���������׼���Ķ������ôͨ������ɱ������
�ֶ������б�������Ҳ����ֻ�����������ϵ�һ�ֶ��
�ѡ��������������һ�㡣

�������������ʲô���塣
������֪��������ȴ�Խ���������ֵ����ţ���������
����ս����

�����������ȷ�ġ�
������һ�����µĴ��󡣲�����ˡ�Ĵ���

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw������ţ��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0120]
//�����ڡ�
<voice name="����" class="����" src="voice/mb04/0230380b40">
��������ˡ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0130]
��������ˡ�������
��
������ҲҪս�����ס�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���գ�
	CreateTextureEX("�}�ݱ���", 4000, Center, Middle, "cg/bg/bg002_��a_02.jpg");
	Fade("�}�ݱ���", 2000, 1000, null, false);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0140]
  ����һֱ�ԡ����塱֮�����ַ���а�񡱵Ļ���
���ǻ᲻����һ�죬���������������˶������أ�

������������壬
�����в�����а������壬
��
�������������˶�������ŵ�ʱ��

�����Ƕ����Է������а��ɡ�
�����ñ����һ�������������Ⱥ������ܹ����а��

������������Ļ�����

���Ǳ���ζ�ţ�
���������κη������ܽ���������ȷ��·����֮����
����ˡ�

��<RUBY text="��������">����������</RUBY>��

���ҽ��������н���
���Դ�ΪĿ�ꡣ

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���������
	FadeDelete("�}�ݱ���", 2000, true);

	SetFwC("cg/fw/fw�\��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0150]
//���\����
<voice name="�\��" class="�\��" src="voice/mb04/0230390b26">
����ô�����ھͳ����ɣ�
��ͬ���ǻ�����ȡ�������ǡ���


{	FwC("cg/fw/fwһ��_Ц�a.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb04/0230400a02">
���š�
��������Ǹ���ȵ���һ�¡���


{	FwC("cg/fw/fwһ��_����.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb04/0230410a02">
���ڳ���֮ǰ�һ���һ�����ò��������顣��


{	FwC("cg/fw/fw�\��_ͨ��.png");}
//���\����
<voice name="�\��" class="�\��" src="voice/mb04/0230420b26">
���á�
����ʲô��������


{	FwC("cg/fw/fw�@��_ͨ��a.png");}
//���@�ӡ�
<voice name="�@��" class="�@��" src="voice/mb04/0230430b28">
��������


//���@�ӡ�
<voice name="�@��" class="�@��" src="voice/mb04/0230440b28">
�����ڴ��ˡ���
��<RUBY text="��������">��λ����</RUBY>��ô�ˣ���


//���@�ӡ�
<voice name="�@��" class="�@��" src="voice/mb04/0230450b28">
����û����һ���𡭡�����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����ˡ�����
	CreateEffect("�}��д", 4000, Center, Middle, 1024, 576, "Plain");
	SetAlias("�}��д","�}��д");
	Request("�}��д",Passive);
	DeleteStA(0,true);
	FadeDelete("�}��д", 500, true);

	Wait(200);

	CreateSE("SE01","se����_����_�i��03_L");
	MusicStart("SE01",0,1000,0,1000,null,false);
	Wait(1000);
	SetVolume("SE*", 4000, 0, null);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0160]
��û�лش��������⣬�������˽Ų���
��
��������֪�����������

��Ҳ������Ϊ���ڵ���ʾ��
��������û�����ڵ���ʾ���Ҵ��Ҳ֪����

���Ǹ������ˡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���ӣţ��������
	CreateSE("SE01","se���L_����_������02");
	MusicStart("SE01",0,1000,0,1300,null,false);

	SetFwC("cg/fw/fwһ��_���x.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0170]
//��һ����
<voice name="һ��" class="һ��" src="voice/mb04/0230460a02">
��������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//��󊒷
	CreateTextureEX("�}�ţ�", 4000, Center, Middle, "cg/ev/ev160_����.jpg");
	Fade("�}�ţ�", 1000, 1000, null, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0180]
����һ���������ұ�����������
���������У�Ħ����������״��

��Ϳ���������

���ն�������

  �����͵ġ�

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����롣�ţ֣ãǤ��B�A�Ǻ�ö����
//������ϵڶ�Ԓ��һ����Ȥ������ν}��
//��������ݳ����ޤ��ޤ����M�ߣţ�Ҋ�Ƥ���Ҫ��ӑ��
	OnSE("se�M��_����_�ե�å���Хå�01",1000);
	CreateColorEXadd("�}��ܞ", 10000, "#FFFFFF");
	Fade("�}��ܞ", 600, 1000, null, true);
	CreateTextureSP("�}����", 8000, Center, Middle, "cg/ev/ev148_һ���ȣ�_a.jpg");
	Fade("�}��ܞ", 150, 200, null, true);
	WaitKey(300);
	Fade("�}��ܞ", 150, 1000, null, true);

	Fade("�}��ܞ", 150, 1000, null, true);
	CreateTextureSP("�}����", 8000, Center, Middle, "cg/ev/ev144_Ů���_�Α���Ҋ�ݤ���һ��_d.jpg");
	Fade("�}��ܞ", 150, 200, null, true);
	WaitKey(300);
	Fade("�}��ܞ", 150, 1000, null, true);

	Fade("�}��ܞ", 150, 1000, null, true);
	CreateTextureSP("�}����", 8000, Center, Middle, "cg/ev/ev141_���ڣ֣Ӵ�������_a.jpg");
	Fade("�}��ܞ", 150, 200, null, true);
	WaitKey(300);
	Fade("�}��ܞ", 150, 1000, null, true);

//��������ݳ��������ǥե饰��ȡ�ä��Ƥ������ϡ�
	if($Fla_ev115pass == true){
	Fade("�}��ܞ", 150, 1000, null, true);
	CreateTextureSP("�}����", 8000, Center, Middle, "cg/ev/ev115_һ�����˴���뾰��_b.jpg");
	Fade("�}��ܞ", 150, 200, null, true);
	WaitKey(300);
	Fade("�}��ܞ", 150, 1000, null, true);
	}else{
	}

	Fade("�}��ܞ", 150, 1000, null, true);
	CreateTextureSP("�}����", 8000, Center, Middle, "cg/ev/ev112_һ���򤪊������ä��������.jpg");
	Fade("�}��ܞ", 150, 200, null, true);
	WaitKey(1000);
	Fade("�}��ܞ", 150, 1000, null, true);

	WaitKey(500);

	Delete("�}����*");
	FadeDelete("�}��ܞ", 1000, true);

	SetFwC("cg/fw/fwһ��_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0190]
//��һ����
<voice name="һ��" class="һ��" src="voice/mb04/0230470a02">
�������š�����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0200]
�����еĻ��䶼�����С�
����ֹ����˼���������С�

���Ǿ���ʹ��Ļ��䡣
����Ȼ��ʹ��ȴ����ʹ�ࡣ

���������������ס�
���Ǹ���Ҳ��ʧ���Լ��������һ��һ�����������Ҹ�
Ϊ��ã��

������ȴ����ȫ���ظ����һ�Ӧ��
����Ӧ�ҵ��𱸡��ҵ��������ҵ����ʡ�

��Ϊʲô���Ҷ������޵�������

���ع��ǲ��������ģ����Ǹ���һͬ�߹���ʱ�⣬Ϊʲ
ô���ܽ����ʱ�������ȴ����Ԩ֮�С�

���������������Ķ��Ǹм�֮�顣
��
��������ȴ���ܻ��������������������֮���·��

�������������
����ݻ��䣬���˼��������������

��Ϊ�˾���

��Ϊ�������������ܹ�ȫ���ض���������Ӧһ�㣬
����Ҳ��ȫ���ػ�Ӧ����

�����ɡ�
����������Լ���ԥ�������㲻ǰ��˼�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetVolume("@mbgm*", 1000, 0, null);
	FadeDelete("�}�ţ�", 1000, true);

	SetFwC("cg/fw/fwһ��_���x.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0210]
//��һ����
<voice name="һ��" class="һ��" src="voice/mb04/0230480a02">
����������������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//������ä��դ꾆�ᡣ�ӣŤǱ�F����
	CreateSE("SE01","se����_����_�����01");
	MusicStart("SE01",0,1000,0,1000,null,false);

	$�Еr�g=RemainTime("SE01");
	WaitKey($�Еr�g);

//��һ������Ԫ���x���å�
//�����������ä���
	CreateTextureEX("�}�ţ֣�", 4000, Center, Middle, "cg/ev/ev161_һ���ο�Ԫ���å�_a.jpg");
	Fade("�}�ţ֣�", 1000, 1000, null, true);

	WaitKey(1000);

	SetFwC("cg/fw/fwһ��_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0220]
//��һ����
<voice name="һ��" class="һ��" src="voice/mb04/0230490a02">
����������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//������󊒷���廊��
	CreateTextureSP("�}�ţ֣�", 3990, Center, Middle, "cg/ev/ev161_һ���ο�Ԫ���å�_b.jpg");
	FadeDelete("�}�ţ֣�", 2000, true);

	WaitKey(1000);

//���ӣš��Ф��`�󡣇y�߳Z��������
//��Ҫ�����ʳ�ä���
	CreateSE("SE01","se����_����_���y�߳Z��");
	CreateSE("SE02","se����_����_���y�߳Z��");
	CreateSE("SE03","se����_����_���y�߳Z��");
	CreateSE("SE04","se����_����_���y�߳Z��");
	CreateColorSP("�}ɫ��", 5000, "#FFFFFF");
	CreateColorSP("�}ɫ�\", 4990, "#000000");

	FadeDelete("�}ɫ��", 2000, false);

	MusicStart("SE01",0,1000,0,1000,null,false);

	Wait(250);
	MusicStart("SE02",0,800,0,1000,null,false);

	Wait(250);
	MusicStart("SE03",0,500,0,1000,null,false);

	Wait(250);
	MusicStart("SE04",0,200,0,1000,null,false);

	Wait(500);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0230]
���ݺ�ҧ�顣
�����ɷ�ĩ�����¶ǡ�

���޷��������޷���ȴ��
�������Ѳ�����ӵ�С�

��������ˣ�ֻ����������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	PrintGO("�ϱ���", 30000);
	CreateColorSP("�}��ܞ", 15000, "#000000");
	OnBG(100,"bg047_�������_�b_02.jpg");
	FadeBG(0,true);
	Delete("�ϱ���");
	FadeDelete("�}��ܞ", 1000, true);

	SetFwC("cg/fw/fw������ţ��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0240]
//�����ڡ�
<voice name="����" class="����" src="voice/mb04/0230500b40">
������������


{	FwC("cg/fw/fwһ��_���x.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb04/0230510a02">
���߰ɡ����ڡ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0250]
���Ǹ��ˣ����Ѿ����������ˡ�

��������վ������ȴ����ҵĵ�����

���ȴ������ҵ�ս����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	ClearWaitAll(2000, 2000);

}

..//������ָ��
//�Υե����롡"mb04_024.nss"