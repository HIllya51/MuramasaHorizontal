//<continuation number="490">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md06_013.nss_MAIN
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
	#bg112_���ؤ��ε�a_01=true;

	//����`�ȥե饰���x�k֫���Τ�GameName
	$PreGameName = $GameName;

	$GameName = "md06_014.nss";

}

scene md06_013.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();


..//������ָ��
//ǰ�ե����롡"md06_012.nss"


//�����ؤ���bg112

	PrintBG("�ϱ���", 30000);
	CreateColorSP("�\", 5000, "BLACK");
	CreateSE("SEL01","se��Ȼ_ˮ_�����01_L");
	MusicStart("SEL01",2000,500,0,1000,null,true);
	OnBG(100, "bg112_���ؤ��ε�a_01.jpg");
	FadeBG(0, true);
	Delete("�ϱ���");
	FadeDelete("�\", 1500, true);


	SoundPlay("@mbgm30", 0, 1000, true);


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
������������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	StR(1000, @0, @0, "cg/st/st����_ͨ��_˽��.png");
	FadeStR(300, false);


	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
//��������
<voice name="����" class="��������" src="voice/md06/0130010a01">
���ţ���

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md06/0130020a00">
���ţ����������尡����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
��������˵�����Ǻܿ�һ�����ʵĺ�ˮȴ�����
�����������ϣ�ȷ������ʵ��

���������ª��ʵ�õ�ľ�ţ������ͼ��ڴ˴��˰ɡ�
����������ֻʣ��һЩ�ɲ����ó���ľ�顣

���򕊣��������������ǵ�ʱ�򡭡���Ȼ�벻��
��ϸϸ�ڣ����ƺ��������������֡�
�������ƻ��ˣ����������¡�

��һ��������¡�
����Ϊ�����ţ�
�����������¶�����������������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetNwC("cg/fw/nw̫�ä���.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
//������㣯ס�����
<voice name="����㣯ס���" class="����������" src="voice/md06/0130030e109">
�������ţ�
��ι���ǲ������������𡣡�

{	NwC("cg/fw/nw�R�����.png");}
//������㣯ס��¡�
<voice name="����㣯ס���" class="����������" src="voice/md06/0130040e110">
������ء�
������һ��ʹ���Ů�˰�����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	DeleteStR(300,false);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050]
����ѭ����ͷ��������������Ǹ���ס������ӡ�
��������Ҫȥ���������ɣ������Ź�������

����Ȼ��ûʲôӡ�󣬵������ƺ������ҡ�
��
������Ҳ����˵�����Ǵ������ĵ�����֮һ��

�����ô�������ԭ�أ�����������ȥ��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	SetFwC("cg/fw/fw����_�a��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0060]
//��������
<voice name="����" class="����" src="voice/md06/0130050a00">
�����Ϻá�
������������鷳�ˡ���

{	NwC("cg/fw/nw̫�ä���.png");}
//������㣯ס�����
<voice name="����㣯ס���" class="����������" src="voice/md06/0130060e109">
�����������ƺ�û�����ء���

{	NwC("cg/fw/nw�R�����.png");}
//������㣯ס��¡�
<voice name="����㣯ס���" class="����������" src="voice/md06/0130070e110">
������
��������λС�粻Ҳ��
ֻ��˵����ʱ���������

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md06/0130080a00">
����������ġ�
������������ô����ľٶ��ˡ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0070]
��������ˣ�����û�����Ҫ��ʲô��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0080]
//��������
<voice name="����" class="����" src="voice/md06/0130090a00">
����ʵ����Щ����Ҫ����һ�¡�
������ռ��һ������ʱ���𣿡�

{	NwC("cg/fw/nw̫�ä���.png");}
//������㣯ס�����
<voice name="����㣯ס���" class="����������" src="voice/md06/0130100e109">
������˭������

{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/md06/0130110a00">
��ʧ���ˡ�
���������־��������¹�����
�����ն���������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0090]
���Ѿ��þ�û���׿������ҽ����ˡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetNwC("cg/fw/nw�R�����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0100]
//������㣯ס��¡�
<voice name="����㣯ס���" class="����������" src="voice/md06/0130120e110">
�������𣿡�

{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/md06/0130130a00">
��Ҳ������ô��Ϊ��
�����ڡ������ò����ࡣ��

{	NwC("cg/fw/nw̫�ä���.png");}
//������㣯ס�����
<voice name="����㣯ס���" class="����������" src="voice/md06/0130140e109">
���Ǿ���Ļ���
�Ϳ����Щ�һ��ȡ���ж��ɡ���

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md06/0130150a00">
����Щ�һ��

{	NwC("cg/fw/nw̫�ä���.png");}
//������㣯ס�����
<voice name="����㣯ס���" class="����������" src="voice/md06/0130160e109">
��������Ⱥ���񣡡�

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0110]
������һ��������Ŀ��ǣ���̵�˵����

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0120]
//��������
<voice name="����" class="����" src="voice/md06/0130170a00">
��������

{	NwC("cg/fw/nw̫�ä���.png");}
//������㣯ס�����
<voice name="����㣯ס���" class="����������" src="voice/md06/0130180e109">
���ӱ��������������Ӷ��������������֡�
����û�����ط�����ȥ�𣿡�

{	NwC("cg/fw/nw�R�����.png");}
//������㣯ס��¡�
<voice name="����㣯ס���" class="����������" src="voice/md06/0130190e110">
����Ϊ�ڹض���
���ֻ���������õı������ˡ���

{	NwC("cg/fw/nw̫�ä���.png");}
//������㣯ס�����
<voice name="����㣯ס���" class="����������" src="voice/md06/0130200e109">
��Ҫ���Ļ���Ҳû�취����
�����Ǿ���������Щԭס�����鷳����

{	NwC("cg/fw/nw�R�����.png");}
//������㣯ס��¡�
<voice name="����㣯ס���" class="����������" src="voice/md06/0130210e110">
���ǰ�����

{	NwC("cg/fw/nw̫�ä���.png");}
//������㣯ס�����
<voice name="����㣯ס���" class="����������" src="voice/md06/0130220e109">
��ʳ��Ҳ�����ˣ�ˮҲ����Ⱦ�ˡ�
������Ѭ�졭�����кܶ���Ⱦ�����ļһ��

{	NwC("cg/fw/nw�R�����.png");}
//������㣯ס��¡�
<voice name="����㣯ס���" class="����������" src="voice/md06/0130230e110">
����Ҳ��˵����Щ���ԡ�
���еط������Ѿ���ɢ�����ˡ���

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md06/0130240a00">
������������

{	NwC("cg/fw/nw̫�ä���.png");}
//������㣯ס�����
<voice name="����㣯ס���" class="����������" src="voice/md06/0130250e109">
���ɶ�
����ȱ�£���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0130]
�������е�һ�ˣ�������ӡ�
������������ϴ�¸�Ů�����𴲵�����ȵ�����
ס���ǵ����ߡ�

�������У�����Ǵ�����ζ��
������¶����֮ͬɫ��

����Ϊ�˿ڵļ��������������Ķ񻯣�ԭס����
������ǿ�ҵĲ�������ԭ����ˡ�
������������������������ǿ����ڴ����ǲ�ȡ�ʵ���
��ʩ���������Ѿ��޷�ָ���ˡ�

�������ǣ����ֵ����Ⱑ��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0140]
//��������
<voice name="����" class="����" src="voice/md06/0130260a00">
����˵�����������š�����

{	NwC("cg/fw/nw̫�ä���.png");}
//������㣯ס�����
<voice name="����㣯ס���" class="����������" src="voice/md06/0130270e109">
��������
����Ҳ����Щ�һ�Ĵ���

//������㣯ס�����
<voice name="����㣯ס���" class="����������" src="voice/md06/0130280e109">
��������ͨ�����ϵ��š�
������Ϊ�������ƻ��ˣ����Ŷ���
���ظɻ���ˣ�ֻ��һֱ��
���ε���һ���Ŷɺӡ���

//������㣯ס�����
<voice name="����㣯ס���" class="����������" src="voice/md06/0130290e109">
���ⲻ��Ҫ�ƺܴ�һ��Ȧ���𡣡�

{	NwC("cg/fw/nw�R�����.png");}
//������㣯ס��¡�
<voice name="����㣯ס���" class="����������" src="voice/md06/0130300e110">
�����ǻ���������

{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/md06/0130310a00">
�����������ƻ����������𣿡�

{	NwC("cg/fw/nw�R�����.png");}
//������㣯ס��¡�
<voice name="����㣯ס���" class="����������" src="voice/md06/0130320e110">
�������ǹη������ˮŪ���İɣ���

{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/md06/0130330a00">
����ȷ��
�����ǣ�������������֤���𣿡�

{	NwC("cg/fw/nw̫�ä���.png");}
//������㣯ס�����
<voice name="����㣯ס���" class="����������" src="voice/md06/0130340e109">
��֤�ݡ���û�С�
�����ǳ������ǣ�����˭����ô��������

//������㣯ס�����
<voice name="����㣯ס���" class="����������" src="voice/md06/0130350e109">
�����ǿ϶��ǿ������������Ǳ�Թ��
���԰����ƻ��ˡ�
�����������Ǿ�ס�ںӵĶ԰�����

{	NwC("cg/fw/nw�R�����.png");}
//������㣯ס��¡�
<voice name="����㣯ס���" class="����������" src="voice/md06/0130360e110">
����Ȼ������Ⱥ��Ҳ����ÿһ���˶�����
ֻҪû���žͲ�����������Թ�ˡ�
�������Ѿ���һ�����ϵ����ˡ������ı���
ֻҪ��һ���������������ŵ�������

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/md06/0130370a00">
������������

{	NwC("cg/fw/nw̫�ä���.png");}
//������㣯ס�����
<voice name="����㣯ס���" class="����������" src="voice/md06/0130380e109">
��Ѳ������ô�����ʲô������

{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/md06/0130390a00">
���ǡ�
���һ���ȷ����̬��������ƴ���ġ���

{	NwC("cg/fw/nw�R�����.png");}
//������㣯ס��¡�
<voice name="����㣯ס���" class="����������" src="voice/md06/0130400e110">
�����ƴ�����
���ٲ�����ƴ����ûʲô��ָ���ġ���

{	NwC("cg/fw/nw̫�ä���.png");}
//������㣯ס�����
<voice name="����㣯ס���" class="����������" src="voice/md06/0130410e109">
����Ȼ������Ҫ��<RUBY text="������">��ͷ��</RUBY>һ�����𣿡�

{	NwC("cg/fw/nw�R�����.png");}
//������㣯ס��¡�
<voice name="����㣯ס���" class="����������" src="voice/md06/0130420e110">
���⸽����Ѳ�����
����Щ�����ľͺ��ˡ���

{	NwC("cg/fw/nw̫�ä���.png");}
//������㣯ס�����
<voice name="����㣯ס���" class="����������" src="voice/md06/0130430e109">
��������ˡ�
�������������ȫ�����ϳ�ȥ����

{	NwC("cg/fw/nw�R�����.png");}
//������㣯ס��¡�
<voice name="����㣯ס���" class="����������" src="voice/md06/0130440e110">
�����ǣ���Ҳ��˵������Ҫ�ձ����ѵİɣ�
��ÿ����������ô��Ǯ֧�������ǰ�����

{	NwC("cg/fw/nw̫�ä���.png");}
//������㣯ס�����
<voice name="����㣯ס���" class="����������" src="voice/md06/0130450e109">
��Ҳ�ǰ�����
����Щ�һֻ�ṷ�ۿ��˵͡���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0150]
�������ƺ�������ʧȥ����Ȥ��
��Թ���뿪�ˡ�
��Ӧ���ǳ����������ŵķ���ȥ�˰ɡ�

����Եģ��������˹�����

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	StR(1000, @0, @0, "cg/st/st����_ͨ��_˽��.png");
	FadeStR(300, false);

	SetFwC("cg/fw/fw����_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0160]
//��������
<voice name="����" class="��������" src="voice/md06/0130460a01">
��������Ҫ��һ�µ��£�
��˵�ؽ������ţ���

{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/md06/0130470a00">
�����в�ͬ����

{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="��������" src="voice/md06/0130480a01">
������ʲô����

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/md06/0130490a00">
��Ŀǰ�ǡ�����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0170]
��ȥ��һ���ĵ����ߴ����������ǵ�˵����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetVolume("SE*", 1500, 0, null);

	CreateColorSP("�\Ļ��", 25000, "#000000");
	DrawTransition("�\Ļ��", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

	WaitPlay("SE*", null);
	WaitKey(1500);

}

..//������ָ��
//�Υե����롡"md06_014.nss"