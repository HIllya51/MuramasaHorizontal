//<continuation number="1780">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene ma02_012.nss_MAIN
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
	#bg023_��Դ̫�μ�_03a=true;
	#bg022_ɽ��a_03=true;
	#bg002_��a_03=true;


	//����`�ȥե饰���x�k֫���Τ�GameName
	if($ma02_012_routeFlag==true){$ma02_012_routeFlag=false;}
	else{$Others_Flag++;SetHex();}

	$PreGameName = $GameName;

	$GameName = "ma02_013.nss";

}

scene ma02_012.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();



..//������ָ��
//ǰ�ե����롡"ma02_011.nss"

//����Դ̫�μ�
	PrintBG("�ϱ���", 30000);
	OnBG(100,"bg023_��Դ̫�μ�_03a.jpg");
	FadeBG(0,true);
	SetVolume("@mbgm*", 2000, 0, null);
	FadeDelete("�ϱ���", 2000, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0001]
����������������Ұ����Щ����صĽ̿���֪ʶ��
����һ����Ȼ��ɡ�
��ֻ���м���ϸ��������ˡ�����ʀ��Ů���ӵ�̬�ȡ�
��ɽ�б������ļң����෴��������̫ƶ�������

������˵Ϻ��������帴�ӵĴ��ڷ�ʽ
ȫ��ѹ�������СС�ļ��С�
��Ψ��С���ӵĻ����������⡣

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	StR(1000, @0, @10,"cg/st/st�դ�_ͨ��_˽��.png");
	FadeStR(300,true);

	SoundPlay("@mbgm27",0,1000,true);

	SetFwC("cg/fw/fw�դ�_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
//���դʡ�
<voice name="�դ�" class="�դ�" src="voice/ma02/0120010b06">
�������������ģ���


{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/ma02/0120020a00">
�������������򡣡�


{	FwC("cg/fw/fw�դ�_ͨ��.png");}
//���դʡ�
<voice name="�դ�" class="�դ�" src="voice/ma02/0120030b06">
�����֡���
����ûȥ��������֪����
�Ǹ��ܴ�ĳ���ɣ���


{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/ma02/0120040a00">
���ǵġ���Ϊ�����ֽ�Ĵ��
��ʵ�ϵ��׶�����


{	FwC("cg/fw/fw�դ�_��˼�h.png");}
//���դʡ�
<voice name="�դ�" class="�դ�" src="voice/ma02/0120050b06">
����ʵ�ϵ��׶�����


{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/ma02/0120060a00">
���׶��ǹ��ҵ�һ�Ķ��ǡ�
����ν��ʵ�ϣ���˼����Ȼ����һ���£�
�������Ͼ�����ˡ���


{	FwC("cg/fw/fw�դ�_��˼�h.png");}
//���դʡ�
<voice name="�դ�" class="�դ�" src="voice/ma02/0120070b06">
�����֡��������Ƶ�һ����
һ��ĵط�����


{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/ma02/0120080a00">
���ǵġ���


{	FwC("cg/fw/fw�դ�_��˼�h.png");}
//���դʡ�
<voice name="�դ�" class="�դ�" src="voice/ma02/0120090b06">
�����������׶��أ���


{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/ma02/0120100a00">
����ɽ�ǹ���������
�����ڣ����ڹ��������ĵ�����
Ҳ����˵��ռ������λ�á�����


{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/ma02/0120110a00">
��Ȼ������������������������ڻ�����
���޽�չ�ؽ�����ս�ֺ�ĸ��ˡ�
�������ķ���Ҳ�����ǱȽ϶��ԡ���


{	FwC("cg/fw/fw�դ�_��˼�h.png");}
//���դʡ�
<voice name="�դ�" class="�դ�" src="voice/ma02/0120120b06">
�����ָ������𣿡�


{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/ma02/0120130a00">
���кܶ��ˡ���


{	FwC("cg/fw/fw�դ�_��˼�h.png");}
//���դʡ�
<voice name="�դ�" class="�դ�" src="voice/ma02/0120140b06">
���ж��٣���


{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/ma02/0120150a00">
����������ӵ�һ����ʮ���������ٱ�����������


{	FwC("cg/fw/fw�դ�_Ц��.png");}
//���դʡ�
<voice name="�դ�" class="�դ�" src="voice/ma02/0120160b06">
��ѽ��
����������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
��СһЩ��Ů���˷ܵ������֡�
���������ֺ������֡��Ӹղ����һֱճ��
�����ͻ�������Ĵ����ߣ�Ƭ��Ҳ���뿪��

���������ĸ��Ժܴ󵨡�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw�դ�_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
//���դ���
<voice name="�դ�" class="�դ�" src="voice/ma02/0120170b05">
���֣�
����Ҫ̫Ϊ����ʿ�����ˡ���


{	FwC("cg/fw/fw�դ�_ͨ��.png");}
//���դʡ�
<voice name="�դ�" class="�դ�" src="voice/ma02/0120180b06">
���ء���


{	FwC("cg/fw/fw����_Ц�a.png");}
//��������
<voice name="����" class="����" src="voice/ma02/0120190a00">
������������⡣
���������µ�����Ҳ�����ģ�
���������˴�æ����


{	FwC("cg/fw/fw�դ�_Ц��.png");}
//���դʡ�
<voice name="�դ�" class="�դ�" src="voice/ma02/0120200b06">
������Ϊ�ѣ���


{	FwC("cg/fw/fw�դ�_ͨ��.png");}
//���դ���
<voice name="�դ�" class="�դ�" src="voice/ma02/0120210b05">
�����ǵġ�����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	StL(1000, @0, @0,"cg/st/st��Դ̫_ͨ��_˽��.png");
	FadeStL(300,true);

	SetFwC("cg/fw/fw��Դ̫_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0036]
//����Դ̫��
<voice name="��Դ̫" class="��Դ̫" src="voice/ma02/0120220b55">
�������鷳���ˣ����á���


{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/ma02/0120230a00">
��ǧ�����ô˵����


{	FwC("cg/fw/fw��Դ̫_ͨ��.png");}
//����Դ̫��
<voice name="��Դ̫" class="��Դ̫" src="voice/ma02/0120240b55">
��Ҳ��֪����������˭�������Ͱ�����������
�����Խ
�����컹�ã�������������ˣ����һ�����ϣ�
������˸������������⣬��Ҳû�¿ɸ��ˡ���


{	FwC("cg/fw/fw�դ�_ͨ��.png");}
//���դ���
<voice name="�դ�" class="�դ�" src="voice/ma02/0120250b05">
�����ǰ���
����һ����������ͼ����������
������үү�ĵ��ߣ����ҵ���ע�⵽ʱ
�Ѿ����³��������߰��㡭����


{	FwC("cg/fw/fw�դ�_�դ�.png");}
//���դ���
<voice name="�դ�" class="�դ�" src="voice/ma02/0120260b05">
����Ȼ�ܱ�Ǹ����������ʿ����
�ɰ������Ǵ�æ�ˡ���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	DeleteStL(300,true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
�������ĥ���ƺ���ľ������֮�൶�ߵ�����
��վ�ڳ�����ϴ�һЩ��Ů�����ͬ������
��������������׵����ƺ��Ǹ�������
˵ʵ������Ȼ�����Ѿ������Ҷ����ϣ�Ҳ�޿ɻ����ˡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw�դ�_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050]
//���դ���
<voice name="�դ�" class="�դ�" src="voice/ma02/0120270b05">
����������˵���أ��������ˣ�
�����������Դ��˻��ߣ���


{	FwC("cg/fw/fw����_Ц�a.png");}
//��������
<voice name="����" class="����" src="voice/ma02/0120280a00">
��������⡣��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	StCR(900, @600, @0,"cg/st/st�դ�_ͨ��_˽��.png");
	FadeStCR(0,true);

	Move("@StMR*", 600, @-540, @0, Dxl2, true);

	SetFwC("cg/fw/fw�դ�_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0058]
//���դ���
<voice name="�դ�" class="�դ�" src="voice/ma02/0120290b05">
���ҵ�Ȼ���⣬�������ұ������⣡
��ι����ʵһЩ����


</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateSE("SE01","se�M��_���ߥ���_���ꥰ��");
	MusicStart("SE01",0,1000,0,1000,null,false);

	$�Еr�g=RemainTime("SE01");
	Shake("@StR*", $�Еr�g, 0, 4, 0, 0, 400, null, true);

	CreateSE("SE01a","se�M��_���ߥ���_�ǈ�01");
	MusicStart("SE01a",0,1000,0,1000,null,false);
	Move("@StR*", 600, @500, @0, Dxl2, false);
	Move("@StMR*", 600, @500, @0, Dxl2, false);

	SetFwC("cg/fw/fw�դ�_Ц��.png");
	SetComic(@0,@0,11);


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0059]
//���դʡ�
<voice name="�դ�" class="�դ�" src="voice/ma02/0120300b06">
���ۡ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	DeleteStR(0,true);
	DeleteStCR(0,true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0060]
����һЩ��Ů���Ӵӳ�������ܳ�������������
���ڸ첲�£��ֻ�ȥ�ˡ�
�����ܻ��ţ����������ͷ�Ĺ����벻����

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0070]
//��������
<voice name="����" class="��������" src="voice/ma02/0120310a01">
��û�뵽�����ͦ���ֵġ�����

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma02/0120320a00">
����������Ϊϡ�����ðɡ�
�������ͥ�������ÿͲ����ࣩ

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/ma02/0120330a01">
���ǰ���
����������΢��Щ�����������ա���

{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/ma02/0120340a00">
�������𣿣�

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/ma02/0120350a01">
����֪����
������û�����á���������
˵����Ϻ���˼��������е���Ϣ����

{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/ma02/0120360a00">
��������������
����Ҳ��Ϻ���˰�����ô˵����
��Ҳ��������Ȼ�ģ�

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/ma02/0120370a01">
��������˵����������������
��û����˵���ء�
���ǲ��ǡ�������Ӧ�ø�����һЩ����

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma02/0120380a00">
��������أ���

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/ma02/0120390a01">
�������������ðɡ�
�����أ��������𣿡�

{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/ma02/0120400a00">
�����룩

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/ma02/0120410a01">
��������������
�����⡭����

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma02/0120420a00">
��ʲô�£���

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/ma02/0120430a01">
���Ǹ�����ʀ��Ů���Ӷ��Ҳ�ȡ���ж���
�ǲ�����ʲô��̵����ɣ���

{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/ma02/0120440a00">
������
���Ҿ�����ֻ��������Щ���Ŷ��ѣ�

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0080]
���ҶԿ�����һ�����Ʊ�С����<RUBY text="��������">��������</RUBY>��
������˵�Լ����˵ļ��⡣
��Ů���·�õ������һ�㣬ʮ�����㡣

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw�դ�_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0090]
//���դ���
<voice name="�դ�" class="�դ�" src="voice/ma02/0120450b05">
�������Ͼ������ˡ�
����ʿ���ˣ����Ե�һ�����
����ķ������ҵĵ���֮������


{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/ma02/0120460a00">
�����̫�ѹ����ˡ���


{	FwC("cg/fw/fw��Դ̫_΢Ц.png");}
//����Դ̫��
<voice name="��Դ̫" class="��Դ̫" src="voice/ma02/0120470b55">
��������������ǿ��ԡ�
����������û�п��ǹ�
���Ǹ��˻��Եķ�����


{	FwC("cg/fw/fw�դ�_ͨ��.png");}
//���դ���
<voice name="�դ�" class="�դ�" src="voice/ma02/0120480b05">
����Ȼ���ǹ���
��������ʿ���ˡ�����ʲô�ɿ��𣿡�


{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/ma02/0120490a00">
������Ķ����Ҳ�̫ϲ����
������ûʲô�ˡ���


{	FwC("cg/fw/fw�դ�_Ц��.png");}
//���դ���
<voice name="�դ�" class="�դ�" src="voice/ma02/0120500b05">
���ţ��Ǿͺã�
��үү���ѷ���������ɣ���


{	FwC("cg/fw/fw��Դ̫_����.png");}
//����Դ̫��
<voice name="��Դ̫" class="��Դ̫" src="voice/ma02/0120510b55">
������������


{	FwC("cg/fw/fw�դ�_ͨ��.png");}
//���դ���
<voice name="�դ�" class="�դ�" src="voice/ma02/0120520b05">
��үү����


{	SetVolume("@mbgm*", 2000, 0, null);
	FwC("cg/fw/fw��Դ̫_����.png");}
//����Դ̫��
<voice name="��Դ̫" class="��Դ̫" src="voice/ma02/0120530b55">
�������Ȼ��ٳԷ��ɡ�
�������п������ˡ����Ǹ�����֮�͡���


{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma02/0120540a00">
������


{	FwC("cg/fw/fw�դ�_ͨ��.png");}
//���դ���
<voice name="�դ�" class="�դ�" src="voice/ma02/0120550b05">
���ס�������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���顢����Ƥ���
	SetVolume("@mbgm*", 0, 0, null);
	OnSE("se�ճ�_��_ľ�䉲���01",750);
	CreateSE("SE01","se�ճ�_����_���_��02");
	MusicStart("SE01",0,750,0,1000,null,false);

	Wait(1000);

	StR(1000, @-30, @0,"cg/st/stС̫��_ͨ��_˽��.png");
	FadeStR(300,true);

	SetFwC("cg/fw/fwС̫��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0100]
//��С̫�ɡ�
<voice name="С̫��" class="С̫��" src="voice/ma02/0120560b35">
����ô������ʧ���ˡ�
���Ϸ�Ҫ��΢���һ��������ģ�
�����������Ͼ��뿪����


</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	StL(1000, @-30, @0,"cg/st/st�դ�_ͨ��_˽��.png");
	Move("@StL*", 300, @30, @0, DxlAuto, false);
	FadeStL(300,true);

	SetFwC("cg/fw/fw�դ�_�Ӥ�.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0101]
//���դ���
<voice name="�դ�" class="�դ�" src="voice/ma02/0120570b05">
���㡢�㡢������˭��������


</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	StCR(1000, @150, @0,"cg/st/st�L��_ͨ��_�Ʒ�.png");
	Move("@StML*", 300, @-30, @0, DxlAuto, false);
	FadeStCR(300,true);
	SoundPlay("@mbgm35",0,1000,true);

	SetFwC("cg/fw/fw�L��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0102]
//���L�ࡿ
<voice name="�L��" class="�L��" src="voice/ma02/0120580b45">
��������

{	FwC("cg/fw/fw�դ�_�Ӥ�.png");}
//���դ���
<voice name="�դ�" class="�դ�" src="voice/ma02/0120590b05">
�������ء��ط��ٴ���!?��

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0110]
��һ������Ů���߿����ţ������ſ��ƳϿ�
ʵ��������ʺ�������ˡ���ע�ͣ���ָ�������
��Ȼ��һ������ʮ�������Ҳ�����̵���������

�����������˻������ˡ�

��Ȼ��������Զ����Ԥ�ϵ�Ҫ�磡
�Է�Ҳ���Ǻ������ˣ�
����Ϊ���ǽ�������ֵġ�
��̫�͹���Щ��ͽ��ʵ���ˡ���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	DeleteStA(300,true);

	SetFwC("cg/fw/fw����_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0120]
//��������
<voice name="����" class="����" src="voice/ma02/0120600a00">
��������

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/ma02/0120610a01">
���޷�ս����
���ٿ��ߵ����塢�����װ��
�����ܽ������״̬����

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma02/0120620a00">
�����˽��ˡ�
��ֻ��̫�����Ҿͺã�

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/ma02/0120630a01">
���������������!?��

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma02/0120640a00">
����ֻ�����������޵��ֶ���ѡȡ�����ѡ��
������Ц��

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/ma02/0120650a01">
�����ǡ�������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0130]
���ҿ����������������������
������������������<RUBY text="����������">����һ����</RUBY>����ĳ����
����˵����ֻ�ǶԷ����ε�������ѡ�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	StL(1000, @0, @0,"cg/st/stС̫��_ͨ��_˽��.png");
	FadeStL(300,true);

	SetFwC("cg/fw/fwС̫��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0140]
//��С̫�ɡ�
<voice name="С̫��" class="С̫��" src="voice/ma02/0120660b35">
���Ǻǡ��ҵ����ҵ������㿴����������ء�
����ô������


{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma02/0120670a00">
���ȵȡ�
���л�����˵��
�����������������ˡ���


{	FwC("cg/fw/fwС̫��_ͨ��.png");}
//��С̫�ɡ�
<voice name="С̫��" class="С̫��" src="voice/ma02/0120680b35">
����Ը�����������ǵ�ȻҲ��ò����ˡ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateSE("SE01","se����_����_�����Ĥ�02");
	MusicStart("SE01",0,1000,0,1000,null,false);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0150]
������ů�Ĵ�������������
��һ����ʹ��������������Ѫ��
�ƺ����˿���΢�ѿ��ˡ�

�����������ܶ����ġ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw�դ�_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0160]
//���դ���
<voice name="�դ�" class="�դ�" src="voice/ma02/0120690b05">
����ʿ���ˣ������а�����


{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/ma02/0120700a00">
����л��λ�����ա�
������ЩС����Ҫ����
����ʧ���ˡ�
�����һ�����ǰ����л�ġ���


{	FwC("cg/fw/fw�դ�_����.png");}
//���դ���
<voice name="�դ�" class="�դ�" src="voice/ma02/0120710b05">
���⡢���ǡ�����


{	FwC("cg/fw/fwС̫��_Ц��.png");}
//��С̫�ɡ�
<voice name="С̫��" class="С̫��" src="voice/ma02/0120720b35">
�������������죡����˵���죡��


{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/ma02/0120730a00">
����仰��ʲô��Ц�ģ���


{	FwC("cg/fw/fwС̫��_ͨ��.png");}
//��С̫�ɡ�
<voice name="С̫��" class="С̫��" src="voice/ma02/0120740b35">
����Ȼ��Ц���ն�������
�����ˡ��������
���Ϸ��������л���ˡ���


{	FwC("cg/fw/fw�դ�_����.png");}
//���դ���
<voice name="�դ�" class="�դ�" src="voice/ma02/0120750b05">
��������


{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/ma02/0120760a00">
���ðɡ��ǾͰ���������ѵ��ݵ������
ʮ��öװ�������
�����ټ���һƿɽ������ġ���������
��Ӧ�ò����˷���̫�๦�򡣡�


{	FwC("cg/fw/fwС̫��_Ц��.png");}
//��С̫�ɡ�
<voice name="С̫��" class="С̫��" src="voice/ma02/0120770b35">
���Ϸ��ס�ˡ�
��һ�����հ�ġ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	OnSE("se����_����_����01",1000);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0170]
����ħС̫��¶��һЦ��
��վ������ʾ��Ӧ��
��������΢ҡ����һ�¡�
����Щ�������ƶѪ�ɡ�

�����ܶ������ܶ�����ս����
��ս������Ҫ�����κζ�����

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	SetFwC("cg/fw/fw����_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0180]
//��������
<voice name="����" class="����" src="voice/ma02/0120780a00">
�������õ��ˡ���


{	FwC("cg/fw/fwС̫��_ͨ��.png");}
//��С̫�ɡ�
<voice name="С̫��" class="С̫��" src="voice/ma02/0120790b35">
������û��ϵ����ͷ���Һ������ġ�
���������߰ɡ�����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	FadeStA(300,true);


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0190]
���ұ����ߴ��ţ����˵ء�

������Ӧ��˵����ͼ����ȥ����Ȼ����
������������ֱ۵�ס��ȥ·��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	StR(1000, @0, @0,"cg/st/st��Դ̫_ͨ��_˽��.png");
	FadeStR(300,true);

	SetFwC("cg/fw/fw��Դ̫_��˼.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0200]
//����Դ̫��
<voice name="��Դ̫" class="��Դ̫" src="voice/ma02/0120800b55">
��������


{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma02/0120810a00">
������������


{	FwC("cg/fw/fw��Դ̫_����.png");}
//����Դ̫��
<voice name="��Դ̫" class="��Դ̫" src="voice/ma02/0120820b55">
�������¡���


{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/ma02/0120830a00">
���������ҵġ�����


{	FwC("cg/fw/fw��Դ̫_����.png");}
//����Դ̫��
<voice name="��Դ̫" class="��Դ̫" src="voice/ma02/0120840b55">
���������Ҽҡ�
����˭ӭ�������ˡ��ֻ�ܾ�˭��
������˵���㡣��


{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma02/0120850a00">
��������


{	FwC("cg/fw/fw��Դ̫_����.png");}
//����Դ̫��
<voice name="��Դ̫" class="��Դ̫" src="voice/ma02/0120860b55">
��Ϻ���˲Ų���ѿ��˽�����ͽ��ԡ�
�������������ĳ��衣
�����ã���������ٵ��������ͷ�ӵ�������
���Ƚ����Ұɡ���


{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/ma02/0120870a00">
�����������õġ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0210]
����Ȼ��˵�ǳ��裬����Ҳû�취��
�����Σ�ֻ�����������ˡ�

������һ���ж������ұ������̲��֡�
���������Ȱѵɴ��۾���Ĭ�����СŮ�����صش�
��������䡣Ȼ��Ѵ�����������ߡ�

�������ֵ�Ů������Ǹ��ܵ��������ķ�Χ��
���۾�ʪ���ˡ�
����������ͷ���ӿ��һ�ɿ�ɬ��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	StL(1000, @0, @0,"cg/st/stС̫��_ͨ��_˽��.png");
	FadeStL(300,true);

	SetFwC("cg/fw/fwС̫��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0220]
//��С̫�ɡ�
<voice name="С̫��" class="С̫��" src="voice/ma02/0120880b35">
������������λ���˼ҿ������¸ҡ�
������һ����ͣ��ȽžͲ����ˡ�
�����ǲ�Ҫ��ǿΪ���


{	FwC("cg/fw/fw��Դ̫_����.png");}
//����Դ̫��
<voice name="��Դ̫" class="��Դ̫" src="voice/ma02/0120890b55">
��������������ͣ�������ʵ��������˵�Ļ�
��û������������
������ʹ���Ҳ��Ը�������ֹ��Ｅ��
������ע���Դǡ���


{	FwC("cg/fw/fwС̫��_Ц��.png");}
//��С̫�ɡ�
<voice name="С̫��" class="С̫��" src="voice/ma02/0120900b35">
������!!����û�뵽����û�뵽��
���Ϸ�ֻ������һ���˸���<RUBY text="����">����</RUBY>���ѣ�
������������Щ�����ʰɡ���


{	FwC("cg/fw/fwС̫��_ͨ��.png");}
//��С̫�ɡ�
<voice name="С̫��" class="С̫��" src="voice/ma02/0120910b35">
�������������¡�
����Ȼ����Ϸ�����������ѵã�
�����Ϸ�����װ��һֻ������ˡ�������


{	FwC("cg/fw/fw�L��_ͨ��.png");}
//���L�ࡿ
<voice name="�L��" class="�L��" src="voice/ma02/0120920b45">
������Ҫ��
���������ʵ�㡣��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	DeleteStL(300,true);

	StL(1000, @0, @0,"cg/st/st�L��_ͨ��_�Ʒ�.png");
	FadeStL(300,true);


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0230]
���������촽�Ĳ���֮ͽ���
��֮ǰһֱ��Ĭ�������������ǰ����
������Դ̫������ǰ��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fwС̫��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0240]
//��С̫�ɡ�
<voice name="С̫��" class="С̫��" src="voice/ma02/0120930b35">
���ط��ٸ��¡���


{	FwC("cg/fw/fw�L��_ͨ��.png");}
//���L�ࡿ
<voice name="�L��" class="�L��" src="voice/ma02/0120940b45">
�����������Ķ��֡�
��������ûԹ�԰ɣ�����Դ̫����


{	FwC("cg/fw/fw��Դ̫_����.png");}
//����Դ̫��
<voice name="��Դ̫" class="��Դ̫" src="voice/ma02/0120950b55">
��Թ�ԣ����µ�������һ����������ϣ�
����±������������Թ�ԡ�
�������Ҿ�������


{	FwC("cg/fw/fw�L��_��Ц.png");}
//���L�ࡿ
<voice name="�L��" class="�L��" src="voice/ma02/0120960b45">
�����������˵��
�����������������������˶ϣ�
Ҳ��֪����˭һֱ���ӱ�ѽ����


{	FwC("cg/fw/fw��Դ̫_����.png");}
//����Դ̫��
<voice name="��Դ̫" class="��Դ̫" src="voice/ma02/0120970b55">
�����ò�������˵��
�������Ҷ�˵��������ҵ�Թ�ԡ�
Ϊ��û���������������ء�����


{	FwC("cg/fw/fw�L��_����.png");}
//���L�ࡿ
<voice name="�L��" class="�L��" src="voice/ma02/0120980b45">
�������ݺ��Ҳ������ʮ�꣡
����ʱ�������ӣ�
����֮��һ�������������˶����
��һ������Ҳ���ر��һ���ϲ����ġ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0250]
�������������˵��������������
����Ĭ���Ļ�����ˡ�

��ÿ���˶���˵����һ��Ҳ������
����������������������Ҳ�޷�������

���ط��ٿ��е���ʮ������ʣ��·�����̬���壬
����������ռ��ÿ�����䡣
���������޷����֡��ֽŶ��������š�
������Щ�������ѡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw��Դ̫_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0260]
//����Դ̫��
<voice name="��Դ̫" class="��Դ̫" src="voice/ma02/0120990b55">
�������Ҳ���Ϊ�Լ�������
���޳ɹ�����


{	FwC("cg/fw/fw�L��_ͨ��.png");}
//���L�ࡿ
<voice name="�L��" class="�L��" src="voice/ma02/0121000b45">
������Ϊ����
����һ�����񡭡����һ�����񡣡�


{	FwC("cg/fw/fw��Դ̫_��˼.png");}
//����Դ̫��
<voice name="��Դ̫" class="��Դ̫" src="voice/ma02/0121010b55">
��������


{	FwC("cg/fw/fw�L��_ͨ��.png");}
//���L�ࡿ
<voice name="�L��" class="�L��" src="voice/ma02/0121020b45">
������ʵҲ����ô��İɡ�
������˵�����Ӳ˵�Լ�������Щ��Ů�ǣ�
����ʮ�����㣿��


{	FwC("cg/fw/fw��Դ̫_����.png");}
//����Դ̫��
<voice name="��Դ̫" class="��Դ̫" src="voice/ma02/0121030b55">
����Ϊʲô��������˵����


{	FwC("cg/fw/fw�L��_ͨ��.png");}
//���L�ࡿ
<voice name="�L��" class="�L��" src="voice/ma02/0121040b45">
������׷��Ĳ���<RUBY text="����">��Щ</RUBY>�ɡ���


{	FwC("cg/fw/fw��Դ̫_����.png");}
//����Դ̫��
<voice name="��Դ̫" class="��Դ̫" src="voice/ma02/0121050b55">
����׷��Ķ�����һ���ܵ��֣�
�����Լ�׷��Ķ���Ҳ��һ���ͱ������ۡ�
��Ҳ����˵��
�ҵ���������Ϊ�˰����Ǵ����������������


{	FwC("cg/fw/fw�L��_ͨ��.png");}
//���L�ࡿ
<voice name="�L��" class="�L��" src="voice/ma02/0121060b45">
���������𣿡�����ô˵��
�Ǿ͵�������º��ˡ�
������Ϊ���������������ս����


{	FwC("cg/fw/fw��Դ̫_ͨ��.png");}
//����Դ̫��
<voice name="��Դ̫" class="��Դ̫" src="voice/ma02/0121070b55">
��Ϊ�˲��Ѻ�ڴ�����Ȫ·��ȥ��
�����������ֻ�����һ�һ������ֹ��
һ��ȥ���ˣ�����ֻ���ҡ���


//����Դ̫��
<voice name="��Դ̫" class="��Դ̫" src="voice/ma02/0121080b55">
����ǰ�������Լ���ְ�𣬻�Ȫ·�ϻ���·�ġ�
���Ҿ��������Ĺ�����
���ǰ�����Ĺ�������ˡ���


{	FwC("cg/fw/fw�L��_����.png");}
//���L�ࡿ
<voice name="�L��" class="�L��" src="voice/ma02/0121090b45">
�����ҵĹ������ǰ����Ĺ���ˣ�
���ߣ����鷳����


{	FwC("cg/fw/fw�L��_ͨ��.png");}
//���L�ࡿ
<voice name="�L��" class="�L��" src="voice/ma02/0121100b45">
���ҾͰ���ι�����ˡ������𣿡�


{	FwC("cg/fw/fw��Դ̫_ͨ��.png");}
//����Դ̫��
<voice name="��Դ̫" class="��Դ̫" src="voice/ma02/0121110b55">
�����ԣ���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	DeleteStA(300,true);

	OnSE("se�ճ�_���_�����01",1000);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0270]
�����˴�ǽ�ϼ��ӵ�����ժ��ĳ��������
���ط��ٰѱ��ŵ�����ŵ����ϡ�

����Դ̫�����������ŵ��Ƕ�С�İ�״���塣
�����ǡ���ʲô������������

���ط��ٴֱ����߿�����ĸ��ӣ�
������ȭͷ������ǰ��
���������Ǽ����ں��������ϵ�װ��֮�ƣ�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	StC(1000, @30, @0,"cg/st/st�L��_ͨ��_�Ʒ�.png");
	Move("@StC*", 300, @-30, @0, DxlAuto, false);
	FadeStC(300,true);

	SetFwR("cg/fw/fw�L��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0280]
//���L�ࡿ
<voice name="�L��" class="�L��" src="voice/ma02/0121120b45">
����Դ̫������

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	DeleteStC(300,true);

	Wait(300);

	StC(1000, @-30, @0,"cg/st/st��Դ̫_ͨ��_˽��.png");
	Move("@StC*", 300, @30, @0, DxlAuto, false);
	FadeStC(300,true);

	SetFwL("cg/fw/fw��Դ̫_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0281]
//����Դ̫��
<voice name="��Դ̫" class="��Դ̫" src="voice/ma02/0121130b55">
���Ҿ���������

</PRE>
	SetTextEXL();
	TypeBeginLIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	DeleteStA(300,true);

	Wait(300);

	PrintGO("�ϱ���", 15000);

	OnBG(100,"bg023_��Դ̫�μ�_03a.jpg");
	FadeBG(0,true);

	StL(1000, @-30, @0,"cg/st/st�L��_ͨ��_�Ʒ�.png");
	StR(1000, @30, @0,"cg/st/st��Դ̫_ͨ��_˽��.png");
	FadeStA(0,true);

	FadeDelete("�ϱ���", 600, true);

//��I�ߡ��Ӥ�
//���֥�å�������
//���|��
//������
	OnSE("se���L_����_������01",1000);

	CreateSE("SE01","se���L_����_������01");
	MusicStart("SE01",0,1000,0,700,null,false);

	Wait(3000);

	OnSE("se����_����_���S01",1000);

	Move("@StL*", 250, @180, @0, Dxl2, false);
	Move("@StR*", 250, @-180, @0, Dxl2, false);

	Wait(220);

	CreateColorSP("�}��ܞ", 5000, "#000000");
	DrawTransition("�}��ܞ", 150, 0, 1000, 100, null, "cg/data/circle_01_00_0.png", true);

	PrintGO("�ϱ���", 15000);
	CreateColorSPadd("�}�ե�", 5000, "#FFFFFF");

	OnBG(100,"bg023_��Դ̫�μ�_03a.jpg");
	FadeBG(0,true);

	StL(1000, @0, @0,"cg/st/st�L��_ͨ��_�Ʒ�.png");
	StR(1000, @0, @0,"cg/st/st��Դ̫_ͨ��_˽��.png");
	FadeStA(0,true);

	SetVolume("SE*", 0, 0, null);
	SetVolume("OnSE*", 0, 0, null);
	SetVolume("@mbgm*", 0, 0, null);

	OnSE("se���L_����_�饤�ե�Ĥ�01",1000);
	Delete("�ϱ���");

	FadeDelete("�}�ե�", 2000, true);

	SetFwC("cg/fw/fw�L��_ͨ��.png");


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0290]
//���L�ࡿ
<voice name="�L��" class="�L��" src="voice/ma02/0121140b45">
������������


{	FwC("cg/fw/fw��Դ̫_ͨ��.png");}
//����Դ̫��
<voice name="��Դ̫" class="��Դ̫" src="voice/ma02/0121150b55">
������������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	DeleteStA(300,true);

	SetNwC("cg/fw/nw������.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0292]
//������֦��
<voice name="����֦" class="����֦" src="voice/ma02/0121160a03">
��̫���ˡ�
���һ��������ǻ�������Ϊ
��ʼ���ź��ء���

//�����衿
<voice name="����" class="����" src="voice/ma02/0121170a04">
��û��ϵ����С�㡣
��û��˵����Ԥ�������͸�λ���ء���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0300]
������ͻ��������ǹ����
�����ž���������Щ�Ի���

��������Ӱ���޽䱸�شӳ������ſ�
���˽�����
�����˶���Ů�ԡ�һλ���������
��һλ���Ͻ�С��

���׷����̴ӽ��������ų���Ʈ�ݡ���ҹ�����Ů�ԣ�
��Ѳ����һ�����ڣ���������üͷ��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	StR(1000, @0, @0,"cg/st/st����_ͨ��_˽��.png");
	FadeStR(300,true);

	SetFwC("cg/fw/fw����_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0310a]
//�����衿
<voice name="����" class="����" src="voice/ma02/0121180a04">
��������һ������ζ�Ŀռ�����ô���£���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	StL(1000, @0, @0,"cg/st/st����֦_ͨ��_�Ʒ�a.png");
	FadeStL(300,true);

	SetFwC("cg/fw/fw����֦_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0310b]
//������֦��
<voice name="����֦" class="����֦" src="voice/ma02/0121190a03">
�����ţ����ֻ��ֲ�����˵����


{	FwC("cg/fw/fw�L��_ͨ��.png");}
//���L�ࡿ
<voice name="�L��" class="�L��" src="voice/ma02/0121200b45">
�����ǡ�����


{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/ma02/0121210a00">
��Ѳ��ٸ��¡���


{	SoundPlay("@mbgm21",0,1000,true);
	FwC("cg/fw/fw����֦_ͨ��a.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma02/0121220a03">
��̫���ˣ��ն����ˡ���������ѽ��
�ҿɵ���������
����˵Ҫȥ�Ѳ�Ȼ������ˡ��춼����
Ҳ��������������һ�����綼û�С���


{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/ma02/0121230a00">
���⡭�����ҵĹ�ʧ��
����������Щ�鷳�£�û�ս������硣
����ƽ���˲���Ҫ�ĵ��ġ�
��Ϊ�˱�ʾ�����Ǹ�⡣��


{	FwC("cg/fw/fw����_ͨ��b.png");}
//�����衿
<voice name="����" class="����" src="voice/ma02/0121240a04">
��ѽ��ѽ���������ǡ���
�������ǲ���Ҫ��
���������ǵ��Ķ��ˣ�
����������״������أ���


{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/ma02/0121250a00">
��˵���߳ܡ������Ҵ������µ��˿ڡ�
����ȷ���˲��ᣬ�����⼸λ�ĸ���
��û���ֳ����¡�
������ġ���


{	FwC("cg/fw/fw����_ͨ��a.png");}
//�����衿
<voice name="����" class="����" src="voice/ma02/0121260a04">
����������
��̫�������ǰɣ���С�㡣��


{	FwC("cg/fw/fw����֦_ͨ��a.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma02/0121270a03">
���ǰ�����ƽ�����£�����̫���ˡ�
���ն�����������Ҫ�Ķ���ѽ��
��Ȼ���ǰ�������
��ҲҪ��ʾ��л���С���


{	FwC("cg/fw/fw����֦_Ц�.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma02/0121280a03">
��лл��λ����


{	FwC("cg/fw/fw�դ�_ͨ��.png");}
//���դ���
<voice name="�դ�" class="�դ�" src="voice/ma02/0121290b05">
���ף����š�������û���⡭����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0320]
��������ξ��ֹ������
���Ǳ�׼������������
��ʀ�ܵ��������һɲ��
��æ��ͣ�Ϲ���

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw�դ�_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0330]
//���դ���
<voice name="�դ�" class="�դ�" src="voice/ma02/0121300b05">
�����ء�����


{	FwC("cg/fw/fw����֦_Ц�.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma02/0121310a03">
���Ǻǡ�
������ɰ�����


{	FwC("cg/fw/fw�դ�_ͨ��.png");}
//���դ���
<voice name="�դ�" class="�դ�" src="voice/ma02/0121320b05">
��������


{	FwC("cg/fw/fw����֦_ͨ��b.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma02/0121330a03">
����˵�������ն����ˡ�
�����кδ��㣿������Ҫ���ش����
���Ǿ�ͬ�аɡ�
���Ӿ����⸽������


{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/ma02/0121340a00">
�������ǡ�
���������ǡ�����


{	FwC("cg/fw/fw����_ͨ��a.png");}
//�����衿
<voice name="����" class="����" src="voice/ma02/0121350a04">
����С�㡣��


{	FwC("cg/fw/fw����֦_����.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma02/0121360a03">
����ѽ��������̫�����ˡ�
��Ҳ��ѽ�������˻�������ɽ·��
��̫����������


{	FwC("cg/fw/fw����֦_ͨ��a.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma02/0121370a03">
���ǽ�������鷳����ˡ�����


{	FwC("cg/fw/fw�L��_����.png");}
//���L�ࡿ
<voice name="�L��" class="�L��" src="voice/ma02/0121380b45">
��ι����


{	FwC("cg/fw/fw����֦_ͨ��a.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma02/0121390a03">
���ţ���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	DeleteStA(300,true);

	StL(1000, @0, @0,"cg/st/st�L��_ͨ��_�Ʒ�.png");
	FadeStL(300,true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0340]
���ǣȣѾ���ת������
������������������������š�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	StR(1000, @0, @0,"cg/st/st����֦_ͨ��_�Ʒ�a.png");
	FadeStR(300,true);

	SetFwC("cg/fw/fw����֦_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0350]
//������֦��
<voice name="����֦" class="����֦" src="voice/ma02/0121400a03">
��ʲô�£���


{	FwC("cg/fw/fw�L��_����.png");}
//���L�ࡿ
<voice name="�L��" class="�L��" src="voice/ma02/0121410b45">
�������������
��ֻ��˵���ֺ����𣿡�


{	FwC("cg/fw/fw����֦_ͨ��a.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma02/0121420a03">
��������������


{	FwC("cg/fw/fw�L��_����.png");}
//���L�ࡿ
<voice name="�L��" class="�L��" src="voice/ma02/0121430b45">
������������


{	SetVolume("@mbgm*", 1, 1, null);
	FwC("cg/fw/fw����֦_Ц�.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma02/0121440a03">
����������������������λ����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//������
	CreateTextureEX("�}����500", 5000, Center, Middle, "cg/bg/bg022_ɽ��a_03.jpg");
	Fade("�}����500", 2000, 1000, null, true);

	Wait(500);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0358]
����������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//��ҹ��
//���ӣ�ҹ�������㥮��`��
	CreateTextureSP("�}����510", 4990, Center, Middle, "cg/bg/bg002_��a_03.jpg");
	FadeDelete("�}����500", 2000, true);

	OnSE("se����_����_ҹ�B�Q��01",1000);//���ߩ`ע��

	Wait(1000);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0359]
������������������������������������������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetVolume("@mbgm*", 2000, 1000, null);
	FadeDelete("�}����510", 2000, true);

	SetFwC("cg/fw/fw����֦_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0360]
//����������
//������֦��
<voice name="����֦" class="����֦" src="voice/ma02/0121450a03">
����������
���ҵ�Ц���䳡�ˣ����š���


{	FwC("cg/fw/fw����_ƣ��.png");}
//�����衿
<voice name="����" class="����" src="voice/ma02/0121460a04">
�����ź��������¿������ղ��������
�޴�Ϊ���绤�������ǲ�����Щ
̫���ó��ˣ���


{	FwC("cg/fw/fw����֦_����.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma02/0121470a03">
���Һ�Ŭ���˰�����


{	FwC("cg/fw/fw����_ƣ��.png");}
//�����衿
<voice name="����" class="����" src="voice/ma02/0121480a04">
��ֻ�еõ������Ŭ�����ܳ�����Ŭ����
��С�㡣��


{	FwC("cg/fw/fw�L��_����.png");}
//���L�ࡿ
<voice name="�L��" class="�L��" src="voice/ma02/0121490b45">
�������ֹ�û����


{	FwC("cg/fw/fw����֦_ͨ��a.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma02/0121500a03">
�����ˡ���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�������}��������֦�饤�ե�ޥ�
	OnSE("se���L_�|��_������01",1000);
	StR(1000, @0, @0,"cg/st/st����֦_���_�Ʒ�.png");
	FadeStR(300,true);


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0368]
����һ��һ�������ķ�֮һ��������ʱ���ڡ�
����ǹ��ǹ����ָ��ط��١�

��������һ��ʼ�����ŵġ���
�����ڻ�ð�����̵�ǹ�ڡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw�L��_�@��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0370]
//���L�ࡿ
<voice name="�L��" class="�L��" src="voice/ma02/0121510b45">
��������


{	FwC("cg/fw/fw����֦_ͨ��a.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma02/0121520a03">
����������ɱ��������ס�
�����Ǹ�С����϶����ٻ��е�������
���ʱ���
������˵�������ܵ�Σ������


//������֦��
<voice name="����֦" class="����֦" src="voice/ma02/0121530a03">
����֪����뷨�Ƿ�����һ����
��ɱ�Һ����ס������������
��������ɱ���ҡ�������
�������ξ����


{	FwC("cg/fw/fw�L��_����.png");}
//���L�ࡿ
<voice name="�L��" class="�L��" src="voice/ma02/0121540b45">
����������˵ʲô����


{	FwC("cg/fw/fw����֦_ͨ��a.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma02/0121550a03">
����ѽ�����ֲ�����Ҳ������
�����ܲ��ˡ��ҽ����㲻Ҫ̫����
�Լ�����ϸ��Ŷ����


{	FwC("cg/fw/fw�L��_ŭ��.png");}
//���L�ࡿ
<voice name="�L��" class="�L��" src="voice/ma02/0121560b45">
������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	StCL(900, @-180, @0,"cg/st/stС̫��_ͨ��_˽��.png");
	Move("@StML*", 300, @30, @0, DxlAuto, false);
	FadeStCL(300,true);

	SetFwC("cg/fw/fwС̫��_����.png");


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0380]
//��С̫�ɡ�
<voice name="С̫��" class="С̫��" src="voice/ma02/0121570b35">
���ط��ٸ��£������ھ͡�����


{	FwC("cg/fw/fw����֦_ͨ��a.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma02/0121580a03">
����λ<RUBY text="������">����Ʒ</RUBY>�ܻ���Թ�ɫ�
������С��������䱦ѽ��
����Ȼ��˵������ۣ�����Ҳ����ĥ����¿
����˵��������̫���ˣ������𣿡�


{	FwC("cg/fw/fwС̫��_ͨ��.png");}
//��С̫�ɡ�
<voice name="С̫��" class="С̫��" src="voice/ma02/0121590b35">
������Ѳ��ٸ��¡�
���Ϸ��Ѿ�����������˼�ˡ�ϣ���㲻Ҫ
�ټ�������������ơ���


{	FwC("cg/fw/fw����֦_����.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma02/0121600a03">
����ѽ����


{	FwC("cg/fw/fwС̫��_�Գ�.png");}
//��С̫�ɡ�
<voice name="С̫��" class="С̫��" src="voice/ma02/0121610b35">
������������ɷ�ѿ����
ȡ�����ǵĶ��䡭��
���Ϸ�Ҳû�гմ���������
<RUBY text="����������������������������">�����ж��ٵ��˶����ǻ�������</RUBY>����


{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma02/0121620a00">
��������


{	FwC("cg/fw/fw��Դ̫_ͨ��.png");}
//����Դ̫��
<voice name="��Դ̫" class="��Դ̫" src="voice/ma02/0121630b55">
��������


{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/ma02/0121640a01">
��������

{	FwC("cg/fw/fwС̫��_�Գ�.png");}
//��С̫�ɡ�
<voice name="С̫��" class="С̫��" src="voice/ma02/0121650b35">
�����ڲ���̫̰�ġ�
���Ϸ���Ϊ������Ľ�����
���ѡ�񡣡�


{	FwC("cg/fw/fw����֦_ͨ��a.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma02/0121660a03">
������û�����顣
�����������𣿡������ξ��
����������ִ���������Ҷ������ʡ�
����Ϊ������̸��������֮�١���


{	FwC("cg/fw/fw�L��_ͨ��.png");}
//���L�ࡿ
<voice name="�L��" class="�L��" src="voice/ma02/0121670b45">
��������


{	FwC("cg/fw/fwС̫��_ͨ��.png");}
//��С̫�ɡ�
<voice name="С̫��" class="С̫��" src="voice/ma02/0121680b35">
���ط��ٸ��¡���


{	FwC("cg/fw/fw�L��_����.png");}
//���L�ࡿ
<voice name="�L��" class="�L��" src="voice/ma02/0121690b45">
��������֪����
������СѾͷ��һ�λ�������
�㾹Ȼ�����������Ρ�
�ҷ��Ĳ���ʹ����ա���


{	FwC("cg/fw/fw����֦_ͨ��a.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma02/0121700a03">
����������ʡʡ�ɡ�
�������������������ţ�Ҳ���˲�����ѽ��
�����ǻ����ƫ���ڽ���
����Ϊ����һ������


{	FwC("cg/fw/fw����_ͨ��a.png");}
//�����衿
<voice name="����" class="����" src="voice/ma02/0121710a04">
�����ϧѽ����ξ���¡�
����������ģ�ĥ�����Լ�������ζ��
���������ɡ��ȴ�ϸ�����֣�
���Ƽ����׵ȷ��档��


{	FwC("cg/fw/fw�L��_ͨ��.png");}
//���L�ࡿ
<voice name="�L��" class="�L��" src="voice/ma02/0121720b45">
����������
����Դ̫����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	DeleteStR(300,true);

	StR(1000, @0, @0,"cg/st/st��Դ̫_ͨ��_˽��.png");
	FadeStR(300,true);

	SetFwC("cg/fw/fw��Դ̫_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0390]
//����Դ̫��
<voice name="��Դ̫" class="��Դ̫" src="voice/ma02/0121730b55">
��ʲô�£���


{	FwC("cg/fw/fw�L��_��Ц.png");}
//���L�ࡿ
<voice name="�L��" class="�L��" src="voice/ma02/0121740b45">
���������ˡ�
�����Ҳ�ɹ������ˣ������𣿡�


{	FwC("cg/fw/fw��Դ̫_��˼.png");}
//����Դ̫��
<voice name="��Դ̫" class="��Դ̫" src="voice/ma02/0121750b55">
��������


{	FwC("cg/fw/fw�L��_ͨ��.png");}
//���L�ࡿ
<voice name="�L��" class="�L��" src="voice/ma02/0121760b45">
����������������õ����ˡ�
���ټ�����


</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateSE("SE01","se����_����_�i��09");
	MusicStart("SE01",0,800,0,1200,null,true);

	DeleteStL(300,true);
	SetFwC("cg/fw/fwС̫��_�侲.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0400]
//��С̫�ɡ�
<voice name="С̫��" class="С̫��" src="voice/ma02/0121770b35">
��������


</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetVolume("SE01", 1600, 0, null);
	CreateSE("SE01a","se����_����_�i��09");
	MusicStart("SE01a",0,800,0,1000,null,true);
	DeleteStCL(300,true);

	SetFwC("cg/fw/fw����_�a��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0410]
//��������
<voice name="����" class="����" src="voice/ma02/0121780a00">
��������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetVolume("SE01a", 1600, 0, null);

	Wait(500);

	ClearWaitAll(2000, 2000);


//�����ʥ��`�øжȣ�
//$Another_Flag = $Another_Flag++;
	$ma02_012_routeFlag = true;
	$Others_Flag++;

	judgment_of_count();


..//������ָ��
//�Υե����롡"ma02_013.nss"

}


