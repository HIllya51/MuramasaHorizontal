//<continuation number="1510">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene ma03_009.nss_MAIN
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
	#bg034_���Lլ����ga_03a=true;
	#bg001_��c_03=true;


	//����`�ȥե饰���x�k֫���Τ�GameName
	$PreGameName = $GameName;

	$GameName = "ma03_010.nss";

}

scene ma03_009.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();


..//������ָ��
//ǰ�ե����롡"ma03_008.nss"

//�����Lլ�����g

	SoundPlay("@mbgm30",0,1000,true);

	PrintBG("�ϱ���", 30000);
	CreateColorSP("�}��ܞ", 15000, "#000000");
	OnBG(100,"bg034_���Lլ����ga_03a.jpg");
	FadeBG(0,true);
	Delete("�ϱ���");
	FadeDelete("�}��ܞ", 1000, true);

	SetFwC("cg/fw/fwһ��_Ц�a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
//��һ����
<voice name="һ��" class="һ��" src="voice/ma03/0090010a02">
�������ն���������

{	FwC("cg/fw/fw����_Ц�.png");}
//�����衿
<voice name="����" class="����" src="voice/ma03/0090020a04">
����ѽ�����������𣿡�

{	FwC("cg/fw/fw����_�a��.png");}
//�룺���������ޤ�������090930��
//��������
<voice name="����" class="����" src="voice/ma03/0090030a00">
���ø�λ�ܾ��ˡ�
�����ʧ̬���Ҹе���ֱ�Ǹ����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
���Ҿ���������ͷ��
��һ�뵽֮ǰ�ĳ�̬���Ҿ��Ծ��޷�������ǡ�
��ͷ��Ǹ��һ���ƵĴ�����˶��������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fwһ��_�Ť�.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
//��һ����
<voice name="һ��" class="һ��" src="voice/ma03/0090040a02">
��û��û�С����¡�����

{	FwC("cg/fw/fw����_ͨ��b.png");}
//�����衿
<voice name="����" class="����" src="voice/ma03/0090050a04">
���Ҳ���û�п��ǵ��������飬������
�����ˡ���ɴ�����Ƕ��ð����ʵ����
��ֱ�Ǹ��
������֮�����Ժ�һ���ֲ�������

{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0090060a00">
���벻Ҫ���ڹ����ˡ�
���������������С�㡣��

{	FwC("cg/fw/fwһ��_ͨ��a.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma03/0090070a02">
�������ң���

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0090080a00">
���������Ǿ�ʧ�����˵��Щ
��������Ĵֻ���
��ʵ����̫�����ˣ�����������㡣��

{	FwC("cg/fw/fwһ��_�Ť�.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma03/0090090a02">
��û��û�С�
���ն�������û�д�������Ϊ��
��˵Щ��֪���صĻ�������

{	FwC("cg/fw/fwһ��_����.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma03/0090100a02">
��ʵ���ǶԲ��𣡡�

{	FwC("cg/fw/fw����_Ц�a.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0090110a00">
��ʮ�ָ�л��Ĺ��ġ�
����������Ҫ˵�ģ���Ȼ�����ڴ����ֲ�
�Ҷ����Ǹ�⡣��

{	FwC("cg/fw/fwһ��_ͨ��a.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma03/0090120a02">
���ǡ�������

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0090130a00">
����֮ǰ�����Ҫ���һῼ�ǵġ�
  ��˵��������ʵ����Ƿ�ѡ���


{	FwC("cg/fw/fwһ��_�@��.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma03/0090140a02">
��������
���桢�����?!��

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0090150a00">
��ֻ������֮ǰ����Ҫ����һ�顣
�����ҳ��Ϲ�ϵ��ʮ��Σ�յġ���

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0090160a00">
��<RUBY text="������������">��ķǳ�Σ��</RUBY>��
��������������

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0090170a00">
�������ҲҪ�Դ�ξ������������

{	FwC("cg/fw/fw����֦_ͨ��b.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma03/0090180a03">
��������

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0090190a00">
�����Լ��ǽ�������λ����һ��
������žʹ˻ظ���
����������������ϲߡ���

//��������
<voice name="����" class="����" src="voice/ma03/0090200a00">
��������˶�λ����Ҫ���µĻ�����ô�⻰
��Ȼʧ�񣬵���λ��ȷ����ʮ���޴���ѡ��
�����λ��Ըð��ԭ�ɱ����Σ�գ��Դ���
ֻ��������ݡ���

//��������
<voice name="����" class="����" src="voice/ma03/0090210a00">
������˵һ�䡣
���Ҳ�����Ҫ��ǿ�κ�����
Э���Լ�����

{	FwC("cg/fw/fw����֦_ͨ��b.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma03/0090220a03">
������������

{	FwC("cg/fw/fwһ��_ͨ��a.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma03/0090230a02">
������������

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0090240a00">
���������ϵĻ����ٿ���һ�¡�
��Ҫ��Ҫ�ʹ˻�ȥ�أ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
������������������������������������������������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����֦_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050]
//������֦��
<voice name="����֦" class="����֦" src="voice/ma03/0090250a03">
���ҾͲ��ûش��˰ɣ���

{	FwC("cg/fw/fw����_�@��.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0090260a00">
����ξ���¡�����

{	FwC("cg/fw/fw����֦_ͨ��b.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma03/0090270a03">
��Э��������������Ϊ�ǣȣ�ʿ�ٵ�
��������ʹ�������������ᷳ����Ҳ
���ᷴ�ڡ�
�����ҡ�����

{	FwC("cg/fw/fw����֦_Ц�.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma03/0090280a03">
����Ҳ���������ĵġ�
����һ�䲻��Ҫ�Ҿ������Ļ�������
����֮������һ��������������仰��
�����ڴ�����

{	FwC("cg/fw/fw����_Ц�.png");}
//�����衿
<voice name="����" class="����" src="voice/ma03/0090290a04">
������Ǵ�С�㡣��

{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0090300a00">
��������

{	FwC("cg/fw/fwһ��_ͨ��b.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma03/0090310a02">
��������Ҳ�ǡ�
���Բ��𣬴ն���������

{	FwC("cg/fw/fwһ��_ͨ��a.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma03/0090320a02">
����֪���Ҹ������鷳�ˡ�
�ҶԸ���ЩƦ�ӵİ취���޷�������
�ն������ĵ��˶Կ��ġ�����һ�㣬
���������ס���

{	FwC("cg/fw/fwһ��_����.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma03/0090330a02">
�����ǣ�����Ҫս����
���������ڲ��С������Ҿ�
�����ӱܡ���Ϊ���ǲ�����ˡ��
������������Ҳ�ã����Ǻ�Ҳ�ա���

{	FwC("cg/fw/fwһ��_ͨ��b.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma03/0090340a02">
���Ҳ���ѡ�������ҳ���֮�����ߵ�
���淽ʽ������֪�������ս����
�����ԡ������������������Ҵ���
�ն�������ߣ���

{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0090350a00">
������������

{	FwC("cg/fw/fw����֦_����.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma03/0090360a03">
���������ҵĴ��ô��
���ܾ��ñ����ҵ�̨�ʣ����Ļ�
�øж������ʸ����ء�����

{	FwC("cg/fw/fw����_�դ�.png");}
//�����衿
<voice name="����" class="����" src="voice/ma03/0090370a04">
�����簮�ĸ�ס�
�������������ܶ���Ŷ��
��С�㡣��

{	FwC("cg/fw/fwһ��_ŭ��b.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma03/0090380a02">
����Ҫ�Ҳ���!!
��ʲ��ʲ��ʲô��ף��ҡ���ֻ�ǡ�����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0060]
��������������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0070]
�����ݿ����ף���ֹ��ʿ�ѡ�
�������޿��κΡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����֦_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0080]
//������֦��
<voice name="����֦" class="����֦" src="voice/ma03/0090390a03">
�������������ˣ�����˵ʲô����

{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0090400a00">
��ûʲô��
������λ����˼���������ˡ�
���Ѿ��޻���˵�ˡ���

{	FwC("cg/fw/fwһ��_Ц�a.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma03/0090410a02">
����ô������

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0090420a00">
��Ϊ�˽�����Ǻ��¼���
�����λЭ���ҡ���

//��������
<voice name="����" class="����" src="voice/ma03/0090430a00">
����������֦�ǣȣѴ�ξ���¡�
�����һ��С�㡣��

{	FwC("cg/fw/fw����֦_Ц�.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma03/0090440a03">
���뽻�����ǰɣ���

{	FwC("cg/fw/fwһ��_Ц�a.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma03/0090450a02">
��л����лл����

{	FwC("cg/fw/fw����_ƣ��.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0090460a00">
�����õ�л��
���Ҷ�������˼�ˡ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0090]
�������Ǿ���Σ�գ������ܵ�л�����޷����ܡ�
���������޵����ݡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_�a��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0100]
//��������
<voice name="����" class="����" src="voice/ma03/0090470a00">
��������ô���Ҹ��߶�λ�ɡ�
��������Ҫ׷Ѱ�Ķ��֡���

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0090480a00">
���������Ǻš���

{	FwC("cg/fw/fwһ��_����.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma03/0090490a02">
������������

{	FwC("cg/fw/fw����֦_ͨ��a.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma03/0090500a03">
������������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//��һ��ҹ�դȤ����å�Ю��
//�����g

	SetVolume("@mbgm*", 2500, 0, null);

	PrintGO("�ϱ���", 25000);

	OnBG(100,"bg001_��c_03.jpg");
	FadeBG(0,true);

	FadeDelete("�ϱ���", 2000, true);

	WaitPlay("@mbgm*", null);

	WaitKey(3000);

	OnBG(100,"bg034_���Lլ����ga_03a.jpg");
	FadeBG(2000,true);


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0110]
��Ӷ���������׼���Ĳ�һ�������ζ�̿���ɿڡ�

����һ�ڲ�������ɤ�ӣ������ϵ�������˵���ڵĻ��


</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D



	SetFwC("cg/fw/fw����_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0120]
//��������
<voice name="����" class="����" src="voice/ma03/0090510a00">
����ξ�����ʹ��ˡ�
����׷Ѱ���Ǻŵ����ɡ���

{	FwC("cg/fw/fw����֦_ͨ��b.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma03/0090520a03">
���š�����

{	SoundPlay("@mbgm18",0,1000,true);
	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0090530a00">
�����������á���

{	FwC("cg/fw/fw����֦_ͨ��a.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma03/0090540a03">
������������

{	FwC("cg/fw/fwһ��_�@��.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma03/0090550a02">
��������

{	FwC("cg/fw/fw����_ͨ��b.png");}
//�����衿
<voice name="����" class="����" src="voice/ma03/0090560a04">
������������

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0090570a00">
��������ǰ�������ˡ�
��<RUBY text="��">��</RUBY>���Ҽ������ഫ�Ľ���֮һ
ȡ������װ����������

//��������
<voice name="����" class="����" src="voice/ma03/0090580a00">
��<RUBY text="����������">Ȼ�󷢿���</RUBY>��
�����˱�ɹ������������ε��ֶ�
ɱ¾�����󡪡����Ǻš�
�����Ǹ�˲�䡣��

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0090590a00">
����������֮���ұ�������Ҽҵ�
��һ������һͬ���ϵ�׷������
��Ҳ�ɹ���׽���ü��Ρ�Ȼ���һ�����
ѹ��ס������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0130]
���ұ������졣
��û���˷���������

�����鶼��ͬС�졣
����Ȼ���뷨������֪��α��ı��顣


�����ַ�Ӧ���������ұ��ɵ���ơ�
������޶ȵؽ���ʵ���г�����������˵����Ļ���


���������ࣿ
��
������ԭ�����۴��ں���״̬������Ҫ˵�İɡ���<RUBY text="����">Ϊ��</RUBY>
������

��Ȼ���Ҳ�����˵���ڡ�
���������֪����<RUBY text="����">����</RUBY>�ཫ�Ҳ��ƣ�����һ�������
�ң��뿪�ҡ��������˶��ѵ�Ҳ��������Ը����������
һ�����ø����ֶν��ҵ��������������ɡ�

������ʱ���Ҳ��㡣
ֱ���������Ǻš�����������Ĩ����
������Ҫ�Ҷ����봦��
�ܹ����ɻ��״̬��

����δ���ҽ����Ʋõ���һ�̡�
��������Ȼ������������һ�㣬������ޱȰ�����


��������һ�㣬����ȫ�տڲ�̸������˵����ȥ��
��������Ϊ�˼��ҵĸ��ܣ�����һƬ��Ĭ��������
��������һ�㡣
����ô�ر��Ӱ���

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0140]
//��������
<voice name="����" class="����" src="voice/ma03/0090600a00">
���������Ǻ�Ϊ�����������η��Ĵ��ڡ�
����һ�����ߵ�������ΪΪ�λ����ӳ�Ϊ
���������ɱ¾��
��������ԭ��ġ���

//��������
<voice name="����" class="����" src="voice/ma03/0090610a00">
�������Ǵ����ս��������
�������ǽ��л��ǽ��еĲٿ��ߣ��������˽�
�ķ�Χ�ڣ������ԳƵ�������ǿ����

{	FwC("cg/fw/fw����_ͨ��b.png");}
//�����衿
<voice name="����" class="����" src="voice/ma03/0090620a04">
���ն������Ѿ����˲����ˡ�
�����������ӡ�������

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0090630a00">
���ǵġ�
�����ع��ƣ�������֮����������֮�𡣡�

{	FwC("cg/fw/fwһ��_����.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma03/0090640a02">
������������

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0090650a00">
������һ�㡭�������Ǻ��鷳��
���Ǹ����У�ӵ�о�����Ⱦ����������

{	FwC("cg/fw/fw����֦_ͨ��b.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma03/0090660a03">
������������Ⱦ����

{	FwC("cg/fw/fw����_ͨ��b.png");}
//�����衿
<voice name="����" class="����" src="voice/ma03/0090670a04">
������ȥ���ǿ��¡���

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0090680a00">
����ȷ���ǿ���������
�����Ǻ��������Լ�ΪԲ�ĵĴ�Χ�ڣ�
����Ӱ���Ի����������������
��Ⱦ������

//��������
<voice name="����" class="����" src="voice/ma03/0090690a00">
���ܵ���Ⱦ��Ӱ����ˣ��������Ǻŵ�
����ͬ����
����������ɱ�˿�ľ��񡣡�

{	FwC("cg/fw/fwһ��_����.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma03/0090700a02">
����������
���ѵ�˵�Ǹ����Ǻ��¼��ġ���<RUBY text="����������">�ܺ�������</RUBY>
<RUBY text="��������������������������������������">����ȥֻ��������Ϊ�Ǿ�����һ�������ɱ</RUBY>��
������Ϊ�������

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0090710a00">
�����������ԡ��¼��ı����߶�����
�����ɱ������
����Ϊ���Ǳ����ǺŶ����ˡ���

{	FwC("cg/fw/fw����_ͨ��b.png");}
//�����衿
<voice name="����" class="����" src="voice/ma03/0090720a04">
�������ǡ�����

{	FwC("cg/fw/fw����֦_ͨ��b.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma03/0090730a03">
�����ӵ��¼�����

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0090740a00">
����ȷ��
���������Ϊ���ӵ��ǣ����������Ǻ�
�Ӵ�֮ʱ������

{	FwC("cg/fw/fwһ��_ͨ��a.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma03/0090750a02">
������Ҳ�ᱻ��Ⱦ�𣿡�

{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0090760a00">
��������Ⱦ���Ͼ������޷���͸װ��
������Ҳ����Ӱ�졣
������������֪���ķ�Χ�ڣ���û�з�����
�����¡���

//��������
<voice name="����" class="����" src="voice/ma03/0090770a00">
��Ȼ������
���������ߣ����Ǻ��ܽ����ѡ���ֲ
���������ϡ���

{	FwC("cg/fw/fw����֦_ͨ��b.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma03/0090780a03">
���ѣ���

{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0090790a00">
��Ϊ�˷��������ô�ƺ����������ƺ�
Ҳ����Ⱦ����һ�֡�
������֪���ġ��ѡ��ǹ���״�ģ��뽣��
�Ӵ���ᱻ���գ������ڲ��ɳ�������

//��������
<voice name="����" class="����" src="voice/ma03/0090800a00">
���������ض���ʱ�䣬ӭ��<RUBY text="����">����</RUBY>����

{	FwC("cg/fw/fw����֦_ͨ��b.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma03/0090810a03">
������Ȼ�󣬻���ô������

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0090820a00">
������δĿ�ù���
����Ϊ���Ǻ�ɢ�������С��ѡ��ڷ���ǰ
�ͱ����ƻ��ˡ�����˵��������ҵ�
������������������ϡ���

//��������
<voice name="����" class="����" src="voice/ma03/0090830a00">
����Ϊ����ѹ�����Ǻţ��ƻ����ѡ�
���ǵ���֮����
�����������ʵ�Ļ����������ѡ���������
���ߣ�ӭ����������һɲ�ǡ�����

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0090840a00">
��<RUBY text="����������������������">���Ϊ�����Ǻ���֮ͬ��</RUBY>����

{	FwC("cg/fw/fw����֦_����.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma03/0090850a03">
������������

{	FwC("cg/fw/fwһ��_����.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma03/0090860a02">
������������

{	FwC("cg/fw/fw����_ͨ��b.png");}
//�����衿
<voice name="����" class="����" src="voice/ma03/0090870a04">
������ԭ����ˡ�
���ĵ�ȷȷ�ǡ��ѡ��ء���

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0090880a00">
����Щ�����Ҳ�δ������֪������
ֻ�������𳤣���Ϊ��Ԯ�������¡�
���������ǡ���

{	FwC("cg/fw/fwһ��_ͨ��a.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma03/0090890a02">
��������й�����������ǵ�Ȼ����

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0090900a00">
��������ˡ�
��һ����Ⱦ���롰�ѡ�������
���������ڡ�����

{	FwC("cg/fw/fw����֦_ͨ��b.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma03/0090910a03">
���ͻ������ֻš���
�����ǺŲ�����һ��Ĺ��ֻҪ
������ᷢ�����ֹ���˵������
�����ӡ�����Щ���鴫��ȥ�Ļ�����

{	FwC("cg/fw/fw����_ͨ��a.png");}
//�����衿
<voice name="����" class="����" src="voice/ma03/0090920a04">
���ȿڲ�Ĺ�����ε��ˡ���


</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0150]
�����ֻ��һ�����ȵı��顣
������֦С���ɴ���̴��ھ���֮���Ѿ�ֻʣ����һ��
��㶡�

����������û��������ң��������˵����һ�ֽ��Ұɡ�
��������
��������Ϊ���������ǲ������������������ˣ��Ż��
���ǹ�����

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0160]
//��������
<voice name="����" class="����" src="voice/ma03/0090930a00">
���������Ǻž�����˳���Ѱ���Ķ��֡�
����λ������Σ���

{	FwC("cg/fw/fw����֦_����.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma03/0090940a03">
�������ǰ�������

{	FwC("cg/fw/fwһ��_����.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma03/0090950a02">
��������
����Ȼ֪�����ǹ��������û�뵽��
��ô�����˵ļһ��

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0170]
�������˹�Ȼ�������ϻش�����ӡ�
����Ҳ��������Ȼ��

������ܵõ�������㷴Ӧ�Ļ�����ôҲ������ð��
й¶���ܵ�Σ����Ȼ�������ǡ�
���Ҽ���˵����

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_�a��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0180]
//��������
<voice name="����" class="����" src="voice/ma03/0090960a00">
���Ҹ��˻��ǽ����λ��Ҫ���֡�
��ֻҪ�ܳ�ŵ�����Ҹղ���˵��
����й¶��ȥ��ɡ�����

{	FwC("cg/fw/fw����֦_Ц�.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma03/0090970a03">
����ѽ��
������ѯ�ʵ��������˼�𣿡�

{	FwC("cg/fw/fw����_�@��.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0090980a00">
������������

{	FwC("cg/fw/fw����֦_ͨ��a.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma03/0090990a03">
���һ�һ����Ϊ���ʵ������Ǹ�
��ζԸ����Ǻ��ء���

{	FwC("cg/fw/fwһ��_ͨ��a.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma03/0091000a02">
����Ҳ�ǡ�
��������һ�����ǲ���ı��뷨�ģ�
�ն���������

{	FwC("cg/fw/fwһ��_ͨ��b.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma03/0091010a02">
������˵�������ѳ�����

{	FwC("cg/fw/fw����֦_Ц�.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma03/0091020a03">
���ǰ���
����Ȼԭ���Ͳ������˵˵��������̬������
����״��������أ���Ҳû����ԥ����Ͼ�ˡ�
���������ܳ�����ˡ���

{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0091030a00">
������������

{	FwC("cg/fw/fw����_ͨ��a.png");}
//�����衿
<voice name="����" class="����" src="voice/ma03/0091040a04">
���ն����ˣ�Ҫ�ٵ�������𣿡�

{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0091050a00">
���ͷ��ˡ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0190]
�����ױ�����������һ˿�ڴ������̲�һͬ
����������
�������ɬ��ζ����

������ֻ���¶���������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0200]
//��������
<voice name="����" class="����" src="voice/ma03/0091060a00">
�����С�㡣��

{	FwC("cg/fw/fwһ��_ͨ��a.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma03/0091070a02">
���ǡ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0210]
����������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0220]
//��������
<voice name="����" class="����" src="voice/ma03/0091080a00">
��һ������

{	FwC("cg/fw/fwһ��_ͨ��b.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma03/0091090a02">
���ǡ����ǣ���

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0091100a00">
�����������ҵĲ����ˡ�
����������־�������Ա��������ʽ�ľ��١�
���ҵ�������ͬ����Ҫ��ȫ���ָʾ����

//��������
<voice name="����" class="����" src="voice/ma03/0091110a00">
���������𣿡�

{	FwC("cg/fw/fwһ��_ͨ��b.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma03/0091120a02">
��û�У���

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0091130a00">
����ξ���¡���

{	FwC("cg/fw/fw����֦_����.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma03/0091140a03">
������������

{	FwC("cg/fw/fw����_ƣ��.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0091150a00">
���벻Ҫҧ�������ó���Թ�޵�
�������ҡ���

{	FwC("cg/fw/fw����֦_����.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma03/0091160a03">
�����ǣ����ܾ��ú���ĽŶ����

{	FwC("cg/fw/fw����_ͨ��a.png");}
//�����衿
<voice name="����" class="����" src="voice/ma03/0091170a04">
������ֱ�����֣��д�С��ȴ�ǡ���ξ���¡�
��������еĲ��Ҳ̫���������˰�����

{	FwC("cg/fw/fwһ��_��Ц.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma03/0091180a02">
���Ǻǡ���

{	FwC("cg/fw/fw����֦_����.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma03/0091190a03">
����Ľ������Ľ���ʺޣ�
���������ˣ�Ҳ����ֱ���ҵ����ְɣ���

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0091200a00">
������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0230]
������Ц�ˡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����֦_�@��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0240]
//������֦��
<voice name="����֦" class="����֦" src="voice/ma03/0091210a03">
����ô���ҡ��ȣ��������
������ǰ׺���ӣ��������������ˣ���

{	FwC("cg/fw/fwһ��_����.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma03/0091220a02">
��ι����һ���Һ�˵Щʲô�أ���

{	FwC("cg/fw/fw����֦_Ц�.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma03/0091230a03">
����ô�ˣ����ģ������ĸ��ࡣ��

{	FwC("cg/fw/fwһ��_ŭ��a.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma03/0091240a02">
����Уģ�����磡�������˶Ů����

{//���ѥ�`��
	OnSE("se�M��_���ꥢ��_����å�02",1000);
	SetVolume("@mbgm*", 300, 0, null);
	FwC("cg/fw/fw����֦_�@��.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma03/0091250a03">
��������˶������

{	FwC("cg/fw/fw����_ͨ��b.png");}
//�����衿
<voice name="����" class="����" src="voice/ma03/0091260a04">
��������С�����еİ�ȫ��
���������ˡ���

{	SoundPlay("@mbgm34",0,1000,true);
	FwC("cg/fw/fw����֦_ŭЦ.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma03/0091270a03">
���ǡ��ǺǺǡ��ǰ���û��
��Ϊ�˹���Բ�����Ŷӹ�ϵ��
���ȱ���Ҫ�������¹�ϵ�ء���

{	StR(1000, @30, @10,"cg/st/stһ��_ͨ��_�Ʒ�.png");
	Move("@StR*", 300, @-30, @-10, Dxl1, false);
	FadeStR(300,false);
	FwC("cg/fw/fwһ��_ŭ��a.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma03/0091280a02">
��������Ҫ��ô�ǣȣѡ�
��������˯֮�⻹��ʲô���ܵĻ�
�͸����ǿ�����������

{	StL(1000, @-30, @10,"cg/st/st����֦_ͨ��_˽��c.png");
	Move("@StL*", 300, @30, @-10, Dxl1, false);
	FadeStL(300,false);
	FwC("cg/fw/fw����֦_ŭЦ.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma03/0091290a03">
���ϣˡ���

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0091300a00">
������ʧ����λ��
���һ�û˵�ꡣ��

{	FwC("cg/fw/fwһ��_ͨ��b.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma03/0091310a02">
���Բ������Եȡ�
�����Ұ�������֮�����ɲ������
ϴ��ˮ�ɡ���

{	FwC("cg/fw/fw����֦_Ц�.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma03/0091320a03">
���š��ܿ���ܽ����ģ��������Եȡ�
��һ����ܽ������

{	FwC("cg/fw/fw����_ͨ��b.png");}
//�����衿
<voice name="����" class="����" src="voice/ma03/0091330a04">
��һ����ָ����

{	FwC("cg/fw/fw����֦_��Ц.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma03/0091340a03">
������һ�غϡ�
����һ���ӣ���

{	FwC("cg/fw/fwһ��_ŭ��a.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma03/0091350a02">
����������!!��

{	DeleteStL(300,false);
	DeleteStR(300,false);
	Move("@StL*", 300, @-120, @0, Dxl1, false);
	Move("@StR*", 300, @120, @0, Dxl1, false);
	FwC("cg/fw/fw����_ƣ��.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0091360a00">
������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0250]
���ҵĻ������ƺ�������ȥ��
���޿��κεغ��˿ڲ衣

{	SetVolume("@mbgm*", 1000, 0, null);}
���Ұ����ߴ����ն����νֱ����������ƿ���
̧ͷ�����컨�壬�㿴������Ϥ����Ӱ��
����ɫ֩�롣

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SoundPlay("@mbgm23",0,1000,true);
	SetFwC("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0260]
//��������
<voice name="����" class="��������" src="voice/ma03/0091370a01">
��������˵���ˣ���

{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0091380a00">
��һֱ������

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/ma03/0091390a01">
�����¶������ˡ�
��˵ʵ������ֻ����������鷳�ˡ���

{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0091400a00">
�������ѵ�ѡ��
������������ô��ģ�

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/ma03/0091410a01">
����֪���Ǻ�Σ�յİɣ���

{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0091420a00">
���š�
���һ�С�ľ�����Ҫ��������
����Ҫ�ĽӴ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0270]
�����������׶���α�ơ�
��<RUBY text="������������">�ܻ���������</RUBY>��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0280]
//��������
<voice name="����" class="��������" src="voice/ma03/0091430a01">
�������Ļ��ͺá�
��������˵����ˣ����±��档��

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0091440a00">
����ô�ˣ�

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/ma03/0091450a01">
��׷�ٵ����Ǻŵ���ζ�ˡ���

{	FwC("cg/fw/fw����_�@��.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0091460a00">
���������

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/ma03/0091470a01">
�����ֵĽ��⡣
������ƫ�������޴����ʩ�С�
����ʲô����Ī�������֡���

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0091480a00">
�����ߡ�������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0290]
������ǣ����
�������ȷ�и������ġ���

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0300]
//��������
<voice name="����" class="����" src="voice/ma03/0091490a00">
�������Ǹ���

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/ma03/0091500a01">
����֪������

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0091510a00">
���š�
����������ǡ�����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0310]
����������������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	ClearWaitAll(1000, 2000);

}

..//������ָ��
//�Υե����롡"ma03_010.nss"