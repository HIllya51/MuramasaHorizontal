//<continuation number="1300">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene ma05_016.nss_MAIN
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

	//����`�ȥե饰���x�k֫���Τ�GameName
	$PreGameName = $GameName;

	$GameName = "ma05_017.nss";

}

scene ma05_016.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

..//������ָ��
//ǰ�ե����롡"ma05_015.nss"


//��ɽ�\��
	PrintBG("�ϱ���", 30000);
	CreateColorSP("�}��ܞ", 15000, "#000000");
	OnBG(100,"bg055_ɽ�\������_01.jpg");
	FadeBG(0,true);
	Delete("�ϱ���");
	FadeDelete("�}��ܞ", 2000, true);
	SoundPlay("@mbgm20",0,1000,true);

	SetNwC("cg/fw/nwɽ�\��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
//������㣯ɽ�\�á�
<voice name="����㣯ɽ�\��" class="����������" src="voice/ma05/0160010e083">
��׼�������𣿡�

{	NwC("cg/fw/nwɽ�\��.png");}
//������㣯ɽ�\�ġ�
<voice name="����㣯ɽ�\��" class="����������" src="voice/ma05/0160020e084">
���ٵȻ����
�����л��ڻ�ûװ�á���

{	NwC("cg/fw/nwɽ�\��.png");}
//������㣯ɽ�\�á�
<voice name="����㣯ɽ�\��" class="����������" src="voice/ma05/0160030e083">
�����ֶ�������Ҫ�ɣ���

{	NwC("cg/fw/nwɽ�\��.png");}
//������㣯ɽ�\�ġ�
<voice name="����㣯ɽ�\��" class="����������" src="voice/ma05/0160040e084">
���ǲ���Ҫ��
�����Ǻþö�û���ˡ��������䲻��
Ҳͦ�õ��𣿡�

{	NwC("cg/fw/nwɽ�\��.png");}
//������㣯ɽ�\�á�
<voice name="����㣯ɽ�\��" class="����������" src="voice/ma05/0160050e083">
���ǵ�Ҳ�ǡ�
�����ˣ�������㡣�����־�
�鷳�ˡ���

{	NwC("cg/fw/nwɽ�\��.png");}
//������㣯ɽ�\�ġ�
<voice name="����㣯ɽ�\��" class="����������" src="voice/ma05/0160060e084">
��Ŷ����

{	FwC("cg/fw/fw���I_����.png");}
//�����I��
<voice name="���I" class="���I��" src="voice/ma05/0160070b31">
�����š���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����I
	StL(1000, @0, @0,"cg/st/st���I_ͨ��_�Ʒ�.png");
	FadeStL(300,true);

	SetNwC("cg/fw/nwɽ�\��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
//������㣯ɽ�\�ġ�
<voice name="����㣯ɽ�\��" class="����������" src="voice/ma05/0160080e084">
����������

{	FwC("cg/fw/fw���I_����.png");}
//�����I��
<voice name="���I" class="���I��" src="voice/ma05/0160090b31">
����˭������ʲô���鷳�ˣ�
��С���ǡ���

{	NwC("cg/fw/nwɽ�\��.png");}
//������㣯ɽ�\�á�
<voice name="����㣯ɽ�\��" class="����������" src="voice/ma05/0160100e083">
������ûʲô������

{	FwC("cg/fw/fw���I_ͨ��b.png");}
//�����I��
<voice name="���I" class="���I��" src="voice/ma05/0160110b31">
��ǹ���������С���
�����л��ڣ���

{	FwC("cg/fw/fw���I_����.png");}
//�����I��
<voice name="���I" class="���I��" src="voice/ma05/0160120b31">
������Щ���������˳������������ʲô��
���ֵ��ò�����Щ�ɣ���

{	NwC("cg/fw/nwɽ�\��.png");}
//������㣯ɽ�\�ġ�
<voice name="����㣯ɽ�\��" class="����������" src="voice/ma05/0160130e084">
��������

{	NwC("cg/fw/nwɽ�\��.png");}
//������㣯ɽ�\�š�
<voice name="����㣯ɽ�\��" class="����������" src="voice/ma05/0160140e085">
��ι�����ǻ�û����
�������Ļ��ᱻ���졪��<?>
{Wait(1000);}
������

{	FwC("cg/fw/fw���I_ͨ��b.png");}
//�����I��
<voice name="���I" class="���I��" src="voice/ma05/0160150b31">
��������

{	NwC("cg/fw/nwɽ�\��.png");}
//������㣯ɽ�\�ơ�
<voice name="����㣯ɽ�\��" class="����������" src="voice/ma05/0160160e086">
����⡭����

{	FwC("cg/fw/fw���I_ͨ��a.png");}
//�����I��
<voice name="���I" class="���I��" src="voice/ma05/0160170b31">
��һ�����ġ����������ﲻ������
�����������ˡ���

{	FwC("cg/fw/fw���I_ŭ��.png");}
//�����I��
<voice name="���I" class="���I��" src="voice/ma05/0160180b31">
�����ø��ҽ���һ���˰ɡ�
������ȫ����װ���Ǵ��㵽����
��ʲôȥ����

{	NwC("cg/fw/nwɽ�\��.png");}
//������㣯ɽ�\�š�
<voice name="����㣯ɽ�\��" class="����������" src="voice/ma05/0160190e085">
�������������Ǹ���
�����ǣ���ȥ�ɹ���ʳ�ġ���

{	NwC("cg/fw/nwɽ�\��.png");}
//������㣯ɽ�\�á�
<voice name="����㣯ɽ�\��" class="����������" src="voice/ma05/0160200e083">
������һ���ؼ����ˡ�����

{	FwC("cg/fw/fw���I_ͨ��b.png");}
//�����I��
<voice name="���I" class="���I��" src="voice/ma05/0160210b31">
����˵���ɡ�
���������ʣ����Һ����ｻ���ȡ����

//�����I��
<voice name="���I" class="���I��" src="voice/ma05/0160220b31">
�����ǣ���صĸ���ȴû��һ�����չ��
������û�а���Լ���ú��������Ҳ��
���ܻ���Լ�ɡ���

{	FwC("cg/fw/fw���I_����.png");}
//�����I��
<voice name="���I" class="���I��" src="voice/ma05/0160230b31">
�����ǲ�����ؤ����

{	NwC("cg/fw/nwɽ�\��.png");}
//������㣯ɽ�\�ġ�
<voice name="����㣯ɽ�\��" class="����������" src="voice/ma05/0160240e084">
������������

{	NwC("cg/fw/nwɽ�\��.png");}
//������㣯ɽ�\�ơ�
<voice name="����㣯ɽ�\��" class="����������" src="voice/ma05/0160250e086">
������������

{	FwC("cg/fw/fw���I_ͨ��b.png");}
//�����I��
<voice name="���I" class="���I��" src="voice/ma05/0160260b31">
�������������ͷ��ı��顣��

{	NwC("cg/fw/nwɽ�\��.png");}
//������㣯ɽ�\�ġ�
<voice name="����㣯ɽ�\��" class="����������" src="voice/ma05/0160270e084">
��û�С�����

{	FwC("cg/fw/fw���I_����.png");}
//�����I��
<voice name="���I" class="���I��" src="voice/ma05/0160280b31">
���ҿ����Ѿ����ͷ��ˡ�
��ͬ���Ļ��ظ�˵�˶��ٱ顣��

{	FwC("cg/fw/fw���I_ͨ��b.png");}
//�����I��
<voice name="���I" class="���I��" src="voice/ma05/0160290b31">
�����ǣ�������ǻ��������Ļ���
�Ǿ�û�취�ˡ�
�����á�����

{	FwC("cg/fw/fw���I��_ͨ��.png");}
//�����I�ܡ�
<voice name="���I��" class="���I��" src="voice/ma05/0160300b32">
�����ˡ�
���ܷ�������㡣��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����I��
	StR(1000, @0, @0,"cg/st/st���I��_ͨ��_�Ʒ�.png");
	FadeStR(300,true);

	SetFwC("cg/fw/fw���I_�@��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
//�����I��
<voice name="���I" class="���I��" src="voice/ma05/0160310b31">
������һĥ����

{	FwC("cg/fw/fw���I��_ͨ��.png");}
//�����I�ܡ�
<voice name="���I��" class="���I��" src="voice/ma05/0160320b32">
���㵽������ô�ˣ���㡣
����������Ŷ����

{	FwC("cg/fw/fw���I_ͨ��b.png");}
//�����I��
<voice name="���I" class="���I��" src="voice/ma05/0160330b31">
��һ���Ҳ����֡�
���Ҹ�ƽ��һ������

{	FwC("cg/fw/fw���I��_ͨ��.png");}
//�����I�ܡ�
<voice name="���I��" class="���I��" src="voice/ma05/0160340b32">
�����𣿡�

{	FwC("cg/fw/fw���I_ͨ��b.png");}
//�����I��
<voice name="���I" class="���I��" src="voice/ma05/0160350b31">
��û��
��ֻ�Ǹı��˷�����ѡ���

{	FwC("cg/fw/fw���I��_ͨ��.png");}
//�����I�ܡ�
<voice name="���I��" class="���I��" src="voice/ma05/0160360b32">
����Ϊ����˴ն���С�ӣ���

{	FwC("cg/fw/fw���I_ͨ��b.png");}
//�����I��
<voice name="���I" class="���I��" src="voice/ma05/0160370b31">
�������ԡ���

{	FwC("cg/fw/fw���I��_ͨ��.png");}
//�����I�ܡ�
<voice name="���I��" class="���I��" src="voice/ma05/0160380b32">
��Ϊ�Σ�
������������������ν�ɡ���

{	FwC("cg/fw/fw���I_ͨ��b.png");}
//�����I��
<voice name="���I" class="���I��" src="voice/ma05/0160390b31">
��������������֮����ǿ�ġ�
���԰ɡ���

{	FwC("cg/fw/fw���I��_ͨ��.png");}
//�����I�ܡ�
<voice name="���I��" class="���I��" src="voice/ma05/0160400b32">
���š���

{	FwC("cg/fw/fw���I_ͨ��b.png");}
//�����I��
<voice name="���I" class="���I��" src="voice/ma05/0160410b31">
���Ǹ�����սʤ���ҡ�
�����������������

//�����I��
<voice name="���I" class="���I��" src="voice/ma05/0160420b31">
����˵����������ν����

{	FwC("cg/fw/fw���I��_ͨ��.png");}
//�����I�ܡ�
<voice name="���I��" class="���I��" src="voice/ma05/0160430b32">
���š���

{	FwC("cg/fw/fw���I_ͨ��b.png");}
//�����I��
<voice name="���I" class="���I��" src="voice/ma05/0160440b31">
��Ϊʲô��
�����Ǿ�������Ӯ�����𣿡�

{	FwC("cg/fw/fw���I��_��Ц.png");}
//�����I�ܡ�
<voice name="���I��" class="���I��" src="voice/ma05/0160450b32">
����Ӯ����
����Ϊ�Ǽһ��û�аѵн�ɱ����Ҳû
°Ϊ���ʣ����ǽ����������ˣ�ʵ��
������Ŀ��ԣ������𣿡�

{	FwC("cg/fw/fw���I_ͨ��b.png");}
//�����I��
<voice name="���I" class="���I��" src="voice/ma05/0160460b31">
��������

{	FwC("cg/fw/fw���I��_��Ц.png");}
//�����I�ܡ�
<voice name="���I��" class="���I��" src="voice/ma05/0160470b32">
���������е㱾�£�Ҳ�����Ǹ�������
��ֻҪ��ҹ͵Ϯ���������ɰ���������ˡ���

//�����I�ܡ�
<voice name="���I��" class="���I��" src="voice/ma05/0160480b32">
��ֻʣ��������Ⱥ�������Ǹ�����
�������ǵ����ҷϡ�
�����ܸ���ǰһ����ɽ���ˡ���

{	FwC("cg/fw/fw���I_ͨ��b.png");}
//�����I��
<voice name="���I" class="���I��" src="voice/ma05/0160490b31">
������������

{	FwC("cg/fw/fw���I��_ͨ��.png");}
//�����I�ܡ�
<voice name="���I��" class="���I��" src="voice/ma05/0160500b32">
���԰ɣ�����㡣��

{	FwC("cg/fw/fw���I_ͨ��b.png");}
//�����I��
<voice name="���I" class="���I��" src="voice/ma05/0160510b31">
������Ҳ����˵�öԡ�
���������Ǽ��²������������ˡ���

{	FwC("cg/fw/fw���I_ʧ��.png");}
//�����I��
<voice name="���I" class="���I��" src="voice/ma05/0160520b31">
������������������ɽ����û�г�·�ġ�
��Ļ���ǲ�����һֱ��������Ϊ����Ϊ�ġ���

{	FwC("cg/fw/fw���I_ͨ��b.png");}
//�����I��
<voice name="���I" class="���I��" src="voice/ma05/0160530b31">
������һ���ǰ���ַ���
�������������������������У�����ʱ��
��Ϊ���ǡ��ѵ������𣿡�

{	FwC("cg/fw/fw���I��_ͨ��.png");}
//�����I�ܡ�
<voice name="���I��" class="���I��" src="voice/ma05/0160540b32">
������
���Ҿ��û��б�İ취����

{	FwC("cg/fw/fw���I_ͨ��b.png");}
//�����I��
<voice name="���I" class="���I��" src="voice/ma05/0160550b31">
������˵˵������

{	FwC("cg/fw/fw���I��_��Ц.png");}
//�����I�ܡ�
<voice name="���I��" class="���I��" src="voice/ma05/0160560b32">
���ɺ�ȥ��½��
��ֻҪ�ܹ���Ǯ�������ð�͵�ɴ��ˡ���

{	FwC("cg/fw/fw���I_ͨ��b.png");}
//�����I��
<voice name="���I" class="���I��" src="voice/ma05/0160570b31">
��������ô��Ǯ�������룿��

{	FwC("cg/fw/fw���I��_ͨ��.png");}
//�����I�ܡ�
<voice name="���I��" class="���I��" src="voice/ma05/0160580b32">
�����������ѹβ������ˣ�
�����ǲ����Ļ����������롣����Ҳ°������

//�����I�ܡ�
<voice name="���I��" class="���I��" src="voice/ma05/0160590b32">
��Ȼ��ֻҪ�跨�����Ǵ���<RUBY text="������">ū����</RUBY>�����ˡ�
����������������Ǻܳ���Ŷ��
�����빩����ˡ���

{	FwC("cg/fw/fw���I��_ͨ��.png");}
//�����I�ܡ�
<voice name="���I��" class="���I��" src="voice/ma05/0160600b32">
����½�������Ͷ������㣬������ƶ���˼�
�������ӡ�
��ū�����������ƺ�ͦ��¡�ġ�ֻҪ������
<RUBY text="����">��Ʒ</RUBY>��һ��������Ǵ��۵ġ���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���ѩ`�󡣥ӥ󥿡�
	CreateSE("SE01","se����_����_�ӥ�01");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateColorEX("�}�ե�", 5000, "#FFFFFF");
	Fade("�}�ե�", 0, 1000, null, true);
	WaitKey(100);
	FadeDelete("�}�ե�", 600, true);

	SetFwC("cg/fw/fw���I��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
//�����I�ܡ�
<voice name="���I��" class="���I��" src="voice/ma05/0160610b32">
��������

{	FwC("cg/fw/fw���I_ŭ��.png");}
//�����I��
<voice name="���I" class="���I��" src="voice/ma05/0160620b31">
����֪�߳ܣ�
���������ۼ��������𣡡�

{	FwC("cg/fw/fw���I��_���.png");}
//�����I�ܡ�
<voice name="���I��" class="���I��" src="voice/ma05/0160630b32">
������ʲô����
����֮ǰ��ɽ���о�ûʲô���𡣡�

{	FwC("cg/fw/fw���I_����.png");}
//�����I��
<voice name="���I" class="���I��" src="voice/ma05/0160640b31">
��������

{	FwC("cg/fw/fw���I��_���.png");}
//�����I�ܡ�
<voice name="���I��" class="���I��" src="voice/ma05/0160650b32">
�������𣿡�

{	FwC("cg/fw/fw���I_ͨ��b.png");}
//�����I��
<voice name="���I" class="���I��" src="voice/ma05/0160660b31">
���ԡ�û��
��������ûʲô���𡣡�

{	FwC("cg/fw/fw���I_ŭ��.png");}
//�����I��
<voice name="���I" class="���I��" src="voice/ma05/0160670b31">
���ǳ̶ȵ����⡣
�����ǡ���<RUBY text="����������">�̶ȵĲ��</RUBY>�������ӣ���

//�����I��
<voice name="���I" class="���I��" src="voice/ma05/0160680b31">
��̫�����ˡ���

{	FwC("cg/fw/fw���I��_ͨ��.png");}
//�����I�ܡ�
<voice name="���I��" class="���I��" src="voice/ma05/0160690b32">
��������

{	NwC("cg/fw/nwɽ�\��.png");}
//������㣯ɽ�\�á�
<voice name="����㣯ɽ�\��" class="����������" src="voice/ma05/0160700e083">
������������
����Ҳ���ֵغðɣ���

{	FwC("cg/fw/fw���I_����.png");}
//�����I��
<voice name="���I" class="���I��" src="voice/ma05/0160710b31">
���㡭����

{	NwC("cg/fw/nwɽ�\��.png");}
//������㣯ɽ�\�ġ�
<voice name="����㣯ɽ�\��" class="����������" src="voice/ma05/0160720e084">
��Ҫ��˵�ĸ����á���
��������ܵķ����ɡ�����

{	NwC("cg/fw/nwɽ�\��.png");}
//������㣯ɽ�\����
<voice name="����㣯ɽ�\��" class="����������" src="voice/ma05/0160730e080">
�������㻰̫���ˡ���

{	NwC("cg/fw/nwɽ�\��.png");}
//������㣯ɽ�\�á�
<voice name="����㣯ɽ�\��" class="����������" src="voice/ma05/0160740e083">
��������

{	NwC("cg/fw/nwɽ�\��.png");}
//������㣯ɽ�\�¡�
<voice name="����㣯ɽ�\��" class="����������" src="voice/ma05/0160750e082">
�����������������û��ɡ�
�����Ҳ�������������ˡ���

{	NwC("cg/fw/nwɽ�\��.png");}
//������㣯ɽ�\�š�
<voice name="����㣯ɽ�\��" class="����������" src="voice/ma05/0160760e085">
���ȵ������д������ˡ���

{	NwC("cg/fw/nwɽ�\��.png");}
//������㣯ɽ�\����
<voice name="����㣯ɽ�\��" class="����������" src="voice/ma05/0160770e080">
��ι������

{	FwC("cg/fw/fw���I_ͨ��b.png");}
//�����I��
<voice name="���I" class="���I��" src="voice/ma05/0160780b31">
�����ˡ�
�����������������ˡ���

{	FwC("cg/fw/fw���I_ŭ��.png");}
//�����I��
<voice name="���I" class="���I��" src="voice/ma05/0160790b31">
�������ҵ����
����ɢ�����������ջؿ����ȥ�����

{	NwC("cg/fw/nwɽ�\��.png");}
//������㣯ɽ�\�ơ�
<voice name="����㣯ɽ�\��" class="����������" src="voice/ma05/0160800e086">
������������

{	NwC("cg/fw/nwɽ�\��.png");}
//������㣯ɽ�\�ġ�
<voice name="����㣯ɽ�\��" class="����������" src="voice/ma05/0160810e084">
������������

{	FwC("cg/fw/fw���I_����.png");}
//�����I��
<voice name="���I" class="���I��" src="voice/ma05/0160820b31">
���������ǡ�
���Ҳ����ҵ������𣿡�

{	FwC("cg/fw/fw���I��_ͨ��.png");}
//�����I�ܡ�
<voice name="���I��" class="���I��" src="voice/ma05/0160830b32">
����ô������������
������˵ʲô������㡣��

{	FwC("cg/fw/fw���I_�@��.png");}
//�����I��
<voice name="���I" class="���I��" src="voice/ma05/0160840b31">
��һĥ����

{	FwC("cg/fw/fw���I��_��Ц.png");}
//�����I�ܡ�
<voice name="���I��" class="���I��" src="voice/ma05/0160850b32">
�����ܰڳ�һ������ļ�������
����Ϊ������Ѿ�<RUBY text="����">����</RUBY>�ˡ���

{	FwC("cg/fw/fw���I_����.png");}
//�����I��
<voice name="���I" class="���I��" src="voice/ma05/0160860b31">
������

{	NwC("cg/fw/nwɽ�\��.png");}
//������㣯ɽ�\�ġ�
<voice name="����㣯ɽ�\��" class="����������" src="voice/ma05/0160870e084">
���ٺ١���
������˵������Ҳ�ǡ���

{	NwC("cg/fw/nwɽ�\��.png");}
//������㣯ɽ�\�á�
<voice name="����㣯ɽ�\��" class="����������" src="voice/ma05/0160880e083">
���������ܶ����ʲô�ģ�
�Ҽǵ�����������û����

{	FwC("cg/fw/fw���I_ͨ��b.png");}
//�����I��
<voice name="���I" class="���I��" src="voice/ma05/0160890b31">
������������

{	NwC("cg/fw/nwɽ�\��.png");}
//������㣯ɽ�\�š�
<voice name="����㣯ɽ�\��" class="����������" src="voice/ma05/0160900e085">
������<RUBY text="����">����</RUBY>��
�����������

{	FwC("cg/fw/fw���I��_��Ц.png");}
//�����I�ܡ�
<voice name="���I��" class="���I��" src="voice/ma05/0160910b32">
���š�
���ǣ��ֵ���һ��ȥ�����

//�����I�ܡ�
<voice name="���I��" class="���I��" src="voice/ma05/0160920b32">
����ȻҪȫ����װ����

{	NwC("cg/fw/nwɽ�\��.png");}
//������㣯ɽ�\�ơ�
<voice name="����㣯ɽ�\��" class="����������" src="voice/ma05/0160930e086">
�����ף���

{	CreateSE("SEL01","se����_����_����᤯01_L");
	MusicStart("SEL01",1000,1000,0,850,null,true);
	NwC("cg/fw/nwɽ�\��.png");}
//������㣯ɽ�\�á�
<voice name="����㣯ɽ�\��" class="����������" src="voice/ma05/0160940e083">
���ǡ���!!��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//��Ӥ��������Ȥ����B��
//�����㤭�����I��̫���i������
	CreateSE("SE01","se���L_����_������01");
	MusicStart("SE01",0,1000,0,1000,null,false);
	StL(1000, @0, @0,"cg/st/st���I_���L_�Ʒ�.png");
	FadeStL(300,true);
	SetVolume("SEL*", 3000, 0, null);

	SetFwC("cg/fw/fw���I��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050]
//�����I�ܡ�
<voice name="���I��" class="���I��" src="voice/ma05/0160950b32">
����������
����Ҫ��ʲô������㡣��

{	FwC("cg/fw/fw���I��_���.png");}
//�����I�ܡ�
<voice name="���I��" class="���I��" src="voice/ma05/0160960b32">
���ܰ��¡�
���ÿ�����

{	FwC("cg/fw/fw���I_ͨ��b.png");}
//�����I��
<voice name="���I" class="���I��" src="voice/ma05/0160970b31">
����������������ͨ������

{	FwC("cg/fw/fw���I��_ͨ��.png");}
//�����I�ܡ�
<voice name="���I��" class="���I��" src="voice/ma05/0160980b32">
��Ϊʲô����

{	FwC("cg/fw/fw���I_ͨ��b.png");}
//�����I��
<voice name="���I" class="���I��" src="voice/ma05/0160990b31">
��Լ���˲���������Լ����
��˵�������õĻ�����ֻ�����������ˡ���

{	FwC("cg/fw/fw���I��_ͨ��.png");}
//�����I�ܡ�
<voice name="���I��" class="���I��" src="voice/ma05/0161000b32">
��ι��
�����棿��

{	FwC("cg/fw/fw���I_ͨ��b.png");}
//�����I��
<voice name="���I" class="���I��" src="voice/ma05/0161010b31">
���ҿ����н̹��㣬
�γ�̫����������ģ���

{	FwC("cg/fw/fw���I��_ͨ��.png");}
//�����I�ܡ�
<voice name="���I��" class="���I��" src="voice/ma05/0161020b32">
��������

{	NwC("cg/fw/nwɽ�\��.png");}
//������㣯ɽ�\�¡�
<voice name="����㣯ɽ�\��" class="����������" src="voice/ma05/0161030e082">
������ܡ�
����ʱ��������������������

{	NwC("cg/fw/nwɽ�\��.png");}
//������㣯ɽ�\����
<voice name="����㣯ɽ�\��" class="����������" src="voice/ma05/0161040e080">
������Ҳ���ɢ�ˣ�
����֮���Ȱ��������£���

{	FwC("cg/fw/fw���I��_���.png");}
//�����I�ܡ�
<voice name="���I��" class="���I��" src="voice/ma05/0161050b32">
�����ˡ���

{	SetVolume("@mbgm*", 1000, 0, null);}
//�����I�ܡ�
<voice name="���I��" class="���I��" src="voice/ma05/0161060b32">
���������ұ�������

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,150);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���ܡ�װ�ס��ũ��o�T��
	CreateSE("SE01","se����_�z_װ��02");
	CreateSE("SE02","se����_�z_װ��03");
	MusicStart("SE01",0,1000,0,700,null,false);
	MusicStart("SE02",0,1000,0,1250,null,false);
	CreateColorEXadd("�}�ե�", 5000, "#FFFFFF");
	Fade("�}�ե�", 600, 1000, null, true);
	StR(1000, @0, @0,"cg/st/3d�ũ�ʽָ�]��_����_ͨ��.png");
	FadeStR(0,true);
	FadeDelete("�}�ե�", 1000, true);

	SetNwC("cg/fw/nwɽ�\��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0060]
//������㣯ɽ�\����
<voice name="����㣯ɽ�\��" class="����������" src="voice/ma05/0161070e080">
����ܡ���!?��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����Щ`��ɽ�\������
	CreateColorSP("�}�\", 4000, "#000000");
	CreateSE("SE01","se���L_����_�����02");
	CreateSE("SE01b","se����_Ѫ_Ѫ���֤�01");
	MusicStart("SE01",0,1000,0,850,null,false);
	SL_left2(5000,@0, @0,1500);

	MusicStart("SE01b",0,1000,0,800,null,false);
	SL_leftfade2(0);
	CreateTextureEX("�}��Ѫ", 5100, Center, Middle, "cg/ef/ef007_����Ѫ���֤�.jpg");
	Rotate("�}��Ѫ", 0, @0, @180, @0, null,true);
	Fade("�}��Ѫ", 0, 1000, null, true);

	SetNwC("cg/fw/nwɽ�\��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0070]
//������㣯ɽ�\�¡�
<voice name="����㣯ɽ�\��" class="����������" src="voice/ma05/0161080e082">
��ʲô����������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����Ф��塣ɽ�\������
	Delete("�}��Ѫ");
	CreateTextureEX("�}��Ѫ", 5100, Center, Middle, "cg/ef/ef006_����Ѫ���֤�.jpg");
	Rotate("�}��Ѫ", 0, @0, @180, @0, null,true);
	CreateSE("SE01","se���L_����_�����02");
	CreateSE("SE01c","se����_Ѫ_Ѫ���֤�01");
	SL_rightdown2(5000,@0, @0,1500);
	MusicStart("SE01",0,1000,0,1000,null,false);
	SL_rightdownfade2(0);
	MusicStart("SE01c",0,1000,0,1000,null,false);
	Fade("�}��Ѫ", 0, 1000, null, true);
	Wait(10);
	CreatePlainSP("�}��д",6000);
	Delete("�}�\");
	Delete("�}��Ѫ");
	StR(1000, @0, @0,"cg/st/3d�ũ�ʽָ�]��_����_�i��.png");
	FadeStR(0,true);
	Wait(500);
	FadeDelete("�}��д", 1000, true);

	SetFwC("cg/fw/fw���I_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0080]
//�����I��
<voice name="���I" class="���I��" src="voice/ma05/0161090b31">
����������!!��

{	FwC("cg/fw/fw���I��_��Ц.png");}
//�����I�ܡ�
<voice name="���I��" class="���I��" src="voice/ma05/0161100b32">
���⸱�����Ѿ����ҵ��ˡ�
���԰ɣ�����㡣��

{	FwC("cg/fw/fw���I_ŭ��.png");}
//�����I��
<voice name="���I" class="���I��" src="voice/ma05/0161110b31">
��һĥ!!��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���ܤ���Ź�ä���
	CreateSE("SE01","se���L_����_Ź��01");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateColorSP("�}��ܞ", 5000, "#FFFFFF");
	DeleteStL(0,true);
	WaitKey(10);
	Delete("�}��ܞ");

	SetFwC("cg/fw/fw���I_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0090]
//�����I��
<voice name="���I" class="���I��" src="voice/ma05/0161120b31">
��������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���Ф���
	CreateSE("SE02","se����_�n��_ܞ��03");
	MusicStart("SE02",0,1000,0,1000,null,false);

	SetNwC("cg/fw/nwɽ�\��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0100]
//������㣯ɽ�\�á�
<voice name="����㣯ɽ�\��" class="����������" src="voice/ma05/0161130e083">
��������

{	NwC("cg/fw/nwɽ�\��.png");}
//������㣯ɽ�\�ġ�
<voice name="����㣯ɽ�\��" class="����������" src="voice/ma05/0161140e084">
��������

{	FwC("cg/fw/fw���I��_���.png");}
//�����I�ܡ�
<voice name="���I��" class="���I��" src="voice/ma05/0161150b32">
����˵����

{	NwC("cg/fw/nwɽ�\��.png");}
//������㣯ɽ�\�á�
<voice name="����㣯ɽ�\��" class="����������" src="voice/ma05/0161160e083">
���ǡ���
��ʲô��!?��

{	FwC("cg/fw/fw���I��_���.png");}
//�����I�ܡ�
<voice name="���I��" class="���I��" src="voice/ma05/0161170b32">
�����������
�����ǲ�������������<RUBY text="������">�ü�Ǯ</RUBY>�𣿡�

{	NwC("cg/fw/nwɽ�\��.png");}
//������㣯ɽ�\�á�
<voice name="����㣯ɽ�\��" class="����������" src="voice/ma05/0161180e083">
����������

{	NwC("cg/fw/nwɽ�\��.png");}
//������㣯ɽ�\�ġ�
<voice name="����㣯ɽ�\��" class="����������" src="voice/ma05/0161190e084">
���������𡣡�

{	FwC("cg/fw/fw���I��_���.png");}
//�����I�ܡ�
<voice name="���I��" class="���I��" src="voice/ma05/0161200b32">
���������������뻹δ���Թ����ˡ�
�������ͼ�ֵ�����ˡ���

//�����I�ܡ�
<voice name="���I��" class="���I��" src="voice/ma05/0161210b32">
�������ء�
�����ǽ̽����ɡ���

{	NwC("cg/fw/nwɽ�\��.png");}
//������㣯ɽ�\�á�
<voice name="����㣯ɽ�\��" class="����������" src="voice/ma05/0161220e083">
������ʲô����

{	NwC("cg/fw/nwɽ�\��.png");}
//������㣯ɽ�\�š�
<voice name="����㣯ɽ�\��" class="����������" src="voice/ma05/0161230e085">
���������
�����������𣿡�

{	FwC("cg/fw/fw���I��_���.png");}
//�����I�ܡ�
<voice name="���I��" class="���I��" src="voice/ma05/0161240b32">
�����԰���
��������˵���������

//�����I�ܡ�
<voice name="���I��" class="���I��" src="voice/ma05/0161250b32">
���������ɡ�
���̺ܾ��˰ɣ���

{	NwC("cg/fw/nwɽ�\��.png");}
//������㣯ɽ�\�ơ�
<voice name="����㣯ɽ�\��" class="����������" src="voice/ma05/0161260e086">
�������ǵ��ǡ���

{	NwC("cg/fw/nwɽ�\��.png");}
//������㣯ɽ�\�š�
<voice name="����㣯ɽ�\��" class="����������" src="voice/ma05/0161270e085">
��������

{	NwC("cg/fw/nwɽ�\��.png");}
//������㣯ɽ�\�á�
<voice name="����㣯ɽ�\��" class="����������" src="voice/ma05/0161280e083">
��������Ȼ�����������ˡ���

{	NwC("cg/fw/nwɽ�\��.png");}
//������㣯ɽ�\�ġ�
<voice name="����㣯ɽ�\��" class="����������" src="voice/ma05/0161290e084">
���Ǿ��ϰɡ���

{	NwC("cg/fw/nwɽ�\��.png");}
//������㣯ɽ�\�ơ�
<voice name="����㣯ɽ�\��" class="����������" src="voice/ma05/0161300e086">
���ſ��ֽ��ϰɡ�
������˼ɡ���

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,150);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//���ե��`�ɥ�����
	ClearWaitAll(2000, 2000);

}

..//������ָ��
//�Υե����롡"ma05_017.nss"