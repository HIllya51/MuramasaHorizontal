//<continuation number="390">


chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mb03_017.nss_MAIN
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
	#bg074_�˲��ε���_01=true;

	//����`�ȥե饰���x�k֫���Τ�GameName
	$PreGameName = $GameName;

	$GameName = "mb03_018.nss";

}

scene mb03_017.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

..//������ָ��
//ǰ�ե����롡"mb03_016vs.nss"

//���ե��`�ɥ���
	PrintBG("�ϱ���", 30000);
	CreateColorSP("�}��ܞ", 15000, "#000000");
	OnBG(100,"bg074_�˲��ε���_01.jpg");
	FadeBG(0,true);
	Delete("�ϱ���");
	FadeDelete("�}��ܞ", 2000, true);
	SoundPlay("@mbgm23",0,1000,true);

	SetFwC("cg/fw/fw����_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
//��������
<voice name="����" class="����" src="voice/mb03/0170010a00">
��û�°ɡ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
��ж��װ�׿������ҵ�һ���ˡ�
�����˶��Ǵ���ľ����

���������˵��ǣ����˺��ӵĲ���֮������������
���⿪���ӣ�ȡ�����е������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetNwC("cg/fw/nw����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
//������㣯���|�С�
<voice name="����㣯���|��" class="����������" src="voice/mb03/0170020e139">
�������ǡ���
�������⵽������ô���¡�����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
���ڳ��ػ����ɵ������ԴǼ�������������������ֹ��
��һ���ǲ�֪�ôӺδ�����ɡ�

����Ȼ������������˼�����Ҳ�֪��λش�
�����׸�����˵���źá�

����Ȼ�����ܹ�ĬĬת����ȥ��
������Ա��Ⱦ�����������ǣ��޷�������㲻������֮
�¡����㲻�ܵõ����˵���⣬Ҳ�������Լ��ĳ��⡣

������֪Ϊ�Ρ���

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fwһ��_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050]
//��һ����
<voice name="һ��" class="һ��" src="voice/mb03/0170030a02">
���Բ�������ս������


{	NwC("cg/fw/nw����.png");}
//������㣯���|�С�
<voice name="����㣯���|��" class="����������" src="voice/mb03/0170040e139">
��ʲô����


{	FwC("cg/fw/fwһ��_ͨ��b.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb03/0170050a02">
���������޵�ս�������ǵ�ս����
���ڻ������𡣡�

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0060]
��һ���������ǣ�����ֱ���˵���˵����

����˼���졣
����ȫû�����Ŀռ䡣
��Ҳ�������������׵�Ҫ�ء�

�������ӱ�����Կ��������������ˡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetNwC("cg/fw/nw����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0070]
//������㣯���|�С�
<voice name="����㣯���|��" class="����������" src="voice/mb03/0170060e139">
��ս������ô���ܡ���
������ȷʵ���ӵ���Ƶ������


{	FwC("cg/fw/fwһ��_ͨ��a.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb03/0170070a02">
�����Ͼ�Ҫ��ʼ�ˡ�
�������Ѿ���ʼ�ˡ���


//��һ����
<voice name="һ��" class="һ��" src="voice/mb03/0170080a02">
���ڹض��������ȫ����ս�������ϱ�����
�����ԣ����������������ָ�������ǡ�������
���ˣ����������ˡ���


{	NwC("cg/fw/nw����.png");}
//������㣯���|�С�
<voice name="����㣯���|��" class="����������" src="voice/mb03/0170090e139">
����������


{	FwC("cg/fw/fwһ��_ͨ��b.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb03/0170100a02">
����˭Ϊ�ѣ���˭Ϊ�С�
�����Ǳܿ�ս�������ߡ���


{	FwC("cg/fw/fwһ��_����.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb03/0170110a02">
�����򣬾ͻᷢ��<RUBY text="����������">����������</RUBY>����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0080]
��һ��˵���ⷬ������סȫ�ҵ����ӣ����ӵ��˿ڣ�����
��������ǣ���ʾ��һ�С�

����ȷ��

��һ��˵��ȫ��Ҫ�㡣
��ֱ�ӵ������޷����ܡ�������˵��һ�ж�����ʵ����
����ȴ���Ҳ�����⣬��˼����ˡ�

���������������Щ��
����̬�Ľ����������������⡺ս������һ��ʵ��Ȼ
������Ҳ�������һ���Ļ���������е��Ҹ棬��
�ڣ�����ô����

��������ս�����������ܡ�
����ȷʵ���κ��˶����뿼�ǵ����⡣Ϊ�˲�����޾�
�ϣ�һζ�ر��������������������

���Ұ�����˵�Ӧ�Թ���������һ�����Լ��ƿ����ߡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_�a��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0090]
//��������
<voice name="����" class="����" src="voice/mb03/0170120a00">
������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0100]
�����ȹݱ���ĵذ�����������յİ�Ϣ֮����
��Ч���ڽ��׵��ľŸ��ˡ�

����û����ν��ͬ�顣
����Ϊ������Ū�����˵�������������������Ӧ�����ɣ�
��Ҳ��Ȼ���޷�ԭ�µ���Ϊ����󷴶����Լ�������Ҳ
��������Ȼ��

������������ġ�
������ͬ�������ɣ���Ҳ���������ǡ�

��Ҳ������һ����
��������Ƿ����˸�������״����ôһ��ֻ�ǳе���ִ
�е�����

������Ҳû�������Ľ��������
������ӵ��ǿ����������ʹ���ֶ���Ҳ�ܼ����ж�����
�һ�ӵ�������ֽŵĻָ�����������������ֻ��ȥս��
���Ǻ����ѵ��¡�

�����һ�������������ĳ��ԣ���һ��ʧ�ܣ����ʾͻ�
������ɱ���˰ɡ�
����׼����Ҫ��һ��������һ�����ж�û�д��ҿ���
�����϶���

��Ҳ����˵��û��ʲô�ú�ڵġ�
��Ҳû��ʲô���߳ܵġ�
����û��ʲôֵ�÷�ʡ��ֵ�ÿ��յġ�

�������������ԡ�
�����Եġ�
��
��һ����һ���˵ĶԻ����ڼ�����

������������̸�Ĳ����Ǹ�ĸ����������Ǹ�С�к���
��һ��֮��˳Ӧ������ǿ�ľ����⺢�ӣ�Ҳ���������ɡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetNwC("cg/fw/nw�ӹ�.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0110]
//������㣯���|�ӹ���
<voice name="����㣯���|�ӹ�" class="����������" src="voice/mb03/0170130e138">
��ս������


{	FwC("cg/fw/fwһ��_Ц�a.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb03/0170140a02">
���š���


{	NwC("cg/fw/nw�ӹ�.png");}
//������㣯���|�ӹ���
<voice name="����㣯���|�ӹ�" class="����������" src="voice/mb03/0170150e138">
��Ϊʲô����


{	FwC("cg/fw/fwһ��_Ц�a.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb03/0170160a02">
����Ϊ�޷�ԭ�»����ǡ���


{	NwC("cg/fw/nw�ӹ�.png");}
//������㣯���|�ӹ���
<voice name="����㣯���|�ӹ�" class="����������" src="voice/mb03/0170170e138">
�������ޣ���


{	FwC("cg/fw/fwһ��_Ц�a.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb03/0170180a02">
���ǵġ��㶮����డ����


{	NwC("cg/fw/nw�ӹ�.png");}
//������㣯���|�ӹ���
<voice name="����㣯���|�ӹ�" class="����������" src="voice/mb03/0170190e138">
�����桭����


{	FwC("cg/fw/fwһ��_ͨ��a.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb03/0170200a02">
����������Űɱ����


{	NwC("cg/fw/nw�ӹ�.png");}
//������㣯���|�ӹ���
<voice name="����㣯���|�ӹ�" class="����������" src="voice/mb03/0170210e138">
����Ҷ����ˡ�
���յú���������


//������㣯���|�ӹ���
<voice name="����㣯���|�ӹ�" class="����������" src="voice/mb03/0170220e138">
�����������������


{	FwC("cg/fw/fwһ��_����.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb03/0170230a02">
����������{	WaitKey(1200);}ԭ������������

{	NwC("cg/fw/nw�ӹ�.png");}
//������㣯���|�ӹ���
<voice name="����㣯���|�ӹ�" class="����������" src="voice/mb03/0170240e138">
��Ҫ�����ǣ�ս���𣿡�


{	FwC("cg/fw/fwһ��_ͨ��a.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb03/0170250a02">
���š���


{	NwC("cg/fw/nw�ӹ�.png");}
//������㣯���|�ӹ���
<voice name="����㣯���|�ӹ�" class="����������" src="voice/mb03/0170260e138">
��Ϊʲô����


{	FwC("cg/fw/fwһ��_Ц�a.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb03/0170270a02">
����Ϊ�������Ǿ������塣��


{	NwC("cg/fw/nw�ӹ�.png");}
//������㣯���|�ӹ���
<voice name="����㣯���|�ӹ�" class="����������" src="voice/mb03/0170280e138">
���������塣��


{	FwC("cg/fw/fwһ��_ͨ��a.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb03/0170290a02">
����ֱ������ػ���ȥ��
��������ˡ���ˡ���


{	NwC("cg/fw/nw�ӹ�.png");}
//������㣯���|�ӹ���
<voice name="����㣯���|�ӹ�" class="����������" src="voice/mb03/0170300e138">
���������𣿡�


{	FwC("cg/fw/fwһ��_ͨ��a.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb03/0170310a02">
������
����һ��㡣��


{	NwC("cg/fw/nw�ӹ�.png");}
//������㣯���|�ӹ���
<voice name="����㣯���|�ӹ�" class="����������" src="voice/mb03/0170320e138">
��������Ҫս������


{	FwC("cg/fw/fwһ��_Ц�a.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb03/0170330a02">
���š���


{	NwC("cg/fw/nw�ӹ�.png");}
//������㣯���|�ӹ���
<voice name="����㣯���|�ӹ�" class="����������" src="voice/mb03/0170340e138">
��Ϊʲô����


{	FwC("cg/fw/fwһ��_Ц�a.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb03/0170350a02">
���������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0120]
��һ��΢Ц�ţ����˴�С�����ؿڡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fwһ��_Ц�a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0130]
//��һ����
<voice name="һ��" class="һ��" src="voice/mb03/0170360a02">
������������Ķ�������


{	NwC("cg/fw/nw�ӹ�.png");}
//������㣯���|�ӹ���
<voice name="����㣯���|�ӹ�" class="����������" src="voice/mb03/0170370e138">
������ֻҪ���Ǹ����Ϳ�������أ��ͻ���ս��
���𣿡�


{	FwC("cg/fw/fwһ��_Ц�a.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb03/0170380a02">
���ԡ���


//��һ����
<voice name="һ��" class="һ��" src="voice/mb03/0170390a02">
�����������������Ϊ�����硭��
����а��������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0140]
������������������������������

��һ����˵�����塣
�����������������
���ذ�������ʬ�塣

��û�к��֮�£�
��û�пɳ�֮�У�
������������ա�

��
�����������������������������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	ClearWaitAll(2000, 2000);

}

..//������ָ��
//�Υե����롡"mb03_018.nss"