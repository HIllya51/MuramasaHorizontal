//<continuation number="650">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene ma03_022.nss_MAIN
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
	if($ma03_022_routeFlag==true){$ma03_022_routeFlag = false;}
	else{$Others_Flag = $Others_Flag+2;SetHex();}

	$PreGameName = $GameName;

	$GameName = "ma03_023.nss";

}

scene ma03_022.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

..//������ָ��
//ǰ�ե����롡"ma03_021a.nss"
//ǰ�ե����롡"ma03_021b.nss"
//ǰ�ե����롡"ma03_021c.nss"

//������
	SoundPlay("@mbgm13",0,1000,true);
	PrintBG("�ϱ���", 30000);
	OnBG(100,"bg037_����������`��a_01.jpg");
	FadeBG(0,true);
	Delete("�ϱ���");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
���ҽ�Ʈ������ʶ��������
���˿̵�ʱ�伫�䱦��һ˲����˷�ǧ���򲻻�����

�����ٴι۲���Χ��
���������߸����Ѿ��򵹵���������

����������һ�ˣ�

����Ұ���ұߣ��ҿ������ԵĻ�·���ǽ�С���촽����
���ſ���
������Ҫ�������С�

������������������֮ǰ����ѭ����Ů�����߿���ȥ��
���ڻ���������

�������и���������״�Ĵ����ӣ��и��������ڳ��Ǳ�
��ȥ��
�����������ˡ�

���������С����и�Բ�εġ�������ģ�ˮ��һ���ġ���

�����񵯡�

�����˾������֡�
���������ӡ�

������������
�����������Ա�д��һ���֣�����Ϯ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw��_��ʹ.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
//���١�
<voice name="��" class="��" src="voice/ma03/0220010b42">
����Ҫ��������!!��

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	OnSE("se����_����_����01",1000);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
���Ҳ��������Ů����ɱ���ȥ��
����ֹ����ס�������ڵ��ϡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw��_��ʹ.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
//���١�
<voice name="��" class="��" src="voice/ma03/0220020b42">
�����ǣ����׵ġ���������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050]
����Ů��ϸ�����ֽţ��ڷ������������������������
ϸ�������ܴ��������ڻ��������б��ۡ�
��������ѹס����

���Ѿ��������ˡ������Ҵ����˵Ķ��������롢ʱ���
����Ҫ�ؾ�������ó��Ľ��ۡ�
��������Ů�ɱ���ȥ��Ҳ��ֻ��������������һ���ϸ�
�ü����ѡ�

����Ů����ѹ���ؿ�֮�£����ĺ�������˵����ʹ��
��Ҳ����ν��
�������Һ�����ǡ�

��Ͷ����
�����С�

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����k
	SetVolume("@mbgm*", 100, 0, null);
	OnSE("se���L_�Ɖ�_���k01",1000);

	CreatePlainSP("�}��", 100);
	Wait(1);
	CreatePlainEX("�}��", 110);
	SetBlur("�}��", true, 3, 600, 50, false);

	CreateColorEXadd("�}�ե�", 2000, "#FFFFFF");

	Fade("�}��", 0, 700, null, false);
	Zoom("�}��", 200, 1200, 1200, null, false);

	Fade("�}�ե�", 200, 1000, null, true);
	Delete("�}��");

	FadeDelete("�}�ե�", 500, false);
	FadeFR4("�}��",0,1000,1000,0,0,30,Dxl2,true);
	Delete("�}��*");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0060]
�������������������ں�ңԶ�ģ���ȥ���龰��
�����ڲݴ��У�����ǹ��һ�߳����ڿ־���һ��
�����ŵ��Ǹ���������ģ����������硣

���Ǹ�ʱ��������ζ���ǿ�����
����ҩ�����Ĵ̱�ζ����

����ϡ��������
����ɷ�ĩ�ģ�ĳЩ��������Ƭ��

�������ڼ����ϲ�֪��˭�ģ�˲�����⡣
��˲��ĸ�̾��

���������ĵб���
����ª�����û�и�ס���۽ǣ�����Ť����

��������
��Ҳ���ں�����ʲô��Ҳ��ʲô��û��˵��

��Ҳ��������˵���������Ϊ���Լ��������ˡ�
�����ۡ�

������ת����
�����˼�������Ҫ���ܡ�

��׷�ϡ�
�������ᴩ��


{//��һ�W
	CreateSE("SE01","se���L_����_Ź��01");
	MusicStart("SE01",0,1000,0,1000,null,false);}
�����˵��ؿ����б����У���һ����ͷ�Ե��ˣ�θҺ��
���˳�����


��Ϯ�����еĴ�붼ʧȥ����ʶ��
�����»�����ʶ���ˣ�Ҳ���Ѿ�˵���������ˡ�����Ҫ
�����ǻ����Ҳ����Ҫ����һ��ʱ���ˡ�

��������Ա�����������ߡ��������ˡ�
�����ȡ�������俪ʼ��һЩ�򵥵Ĵ���

��Ӧ�úܿ�Ϳ��Խ���İɡ�
������û�������Ҫ�������䣬�͵���Ȼ���Ǽ�λԱ
��������Ҫ���Ƶ�������ȥ����Ҳ����ȥ˵Щʲô��

{	SoundPlay("@mbgm33",0,1000,true);}
�����ߴ�����������
��΢���ġ�

���Ҵ�ϻ���
�������Ů����·�٣����׶��Ǹ���Ϊ��Ϯ��Ľ���
��ע�˶��ٵİ��⣬�Լ��⵽���ǳ���ʲôԭ����
�Ѿ�����Ŀ���ˡ�

������һ����֪����Ҳһ����
��һ������ɫ�ܿ��¡����ĵķߺ��������ѻ���ȥ��
��������ҧ���Լ��촽��ʱ��Ҳ��Զ�˰ɡ�
������֮ǰ�б�Ҫ��ֹ����

���������ξ����һ������������˳�Ϊ�񸸵�ԭɱ
�˿�ı��鿴��ǹ�ڡ�����Ҳ����˵��һ���ողŷ�
�ְ��������ֶ���������̥�������������˵ı��顣

�������̴������Ա߳�˼�š�

���Գ��׻�Ůʿ���Ǹ����ڲк��Ա����ַ����š�
��
�������Ǹ���Ů����ʲô��ȫȻ��֪��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	StR(1000, @0, @0,"cg/st/stһ��_ͨ��_�Ʒ�b.png");
	FadeStR(300,false);

	SetFwC("cg/fw/fwһ��_�ڤ���.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0080]
//��һ����
<voice name="һ��" class="һ��" src="voice/ma03/0220030a02">
���ɶ񡣡�

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0090]
��һ������š�
������������ʶ��Ѱ����������ķ�ŭ��й������
��˫�۶������漯�ţ����������������ں������ε�
ʹ��֮�С�

����������˼���Щ�������ȥ�Ļ�����Ҳ���ԱȽ�
���ɵ�����ȥ�ɣ����ɵ���һ��������ȫû��������
���аԵ���
����ֻ��ŭ�����ض������ǣ������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fwһ��_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0100]
//��һ����
<voice name="һ��" class="һ��" src="voice/ma03/0220040a02">
����Щ�һ��Ȼ������

{	StL(1000, @0, @0,"cg/st/st����_ͨ��_˽��.png");
	FadeStL(300,false);
	FwC("cg/fw/fw����_ͨ��b.png");}
//�����衿
<voice name="����" class="����" src="voice/ma03/0220050a04">
������˵����Ҳֻ����Ȥ�Ļ��ɡ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0110]
�����̴ӻش����

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0120]
//�����衿
<voice name="����" class="����" src="voice/ma03/0220060a04">
�����������ûƽ�֮��ѹ���Եؾ�����������
�ƺ��ָ����ʲô������ɫ������ҧ����ƨ�ɡ�
�����������Ѿ��ܽ����˰ɡ���

{	FwC("cg/fw/fwһ��_����.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma03/0220070a02">
����ʹ��ˣ���Ҳ�Ƿ���ɡ��������Ǳ���
������������ɡ�
���ն����������ܴ��������𡣰������ˣ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0130]
����������������£������������ʲô��Χ���ҵ���
������û��ƶ������е�����
���ش�Ҳ�ǣ���ȫ����Ҫ˼�����ܵó��������ڵĲ���
���ҡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw�衩���װ_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0140]
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/ma03/0220080a07">
��û�õİ������԰ɣ���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	DeleteStA(300,true);

	StL(1000, @0, @0,"cg/st/st�衩��_ͨ��_��װ.png");
	FadeStL(300,true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0150]
����վ�������������Ѿ����������ˡ�
������һ����̵�Ц��Ц����ͬʱ�����¼��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw�衩���װ_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0160]
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/ma03/0220090a07">
��ֻҪ��Ⱥ�˲��ǰѼ��ţ�̵����Դ���
�������ʣ�İ׳ա�
������Ǵ���Ա��׼����ʼ��ί����<RUBY text="����">רҵ</RUBY>��Ա
�˰ɡ����������˺ܶ�ġ���

{	FwC("cg/fw/fw�衩���װ_Ц�.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/ma03/0220100a07">
�������Լ����ֻ�Ǵ�����һ�����۵ľƹݣ�
����żȻ������ߵ�ĳ��˵�˾䡰���������
���˰���֮���Ը�����ѡ�
����Ȼ�ǲ���������������ġ���

//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/ma03/0220110a07">
��������������֯Ŷ��
���ҿ��Զ�ʮԪ������Щ�һ�����ʲô֤�ݶ�
ȡ������Ŷ��������ֻ�ܲ鵽���ǵ�ͷĿΪֹ
���������£�����һƬ������

{	FwC("cg/fw/fwһ��_����.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma03/0220120a02">
����������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	DeleteStA(300,false);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0170]
��һ���ýż�����һ�µ��档
����֪�����Ĳ���������˵���������أ�
�������˵������Ů��

����Ů��˵������ȷ�ġ�
������ѯ�������˴��Ҳ�ò�������Ĺ�˾��������
�������ɡ�����õ��ˡ���������ܸ����������
�����֤�ݣ�Ҳ�͵���Ϊֹ�ˡ�

������辩�������Ļ����Ӱ�ӡ��������������ڴ���
�ֱ���״̬�Ļ����͸�����ˡ����������о��ǲ�����
�εĸ���֮����

����Ϊ���з������ǣ��Ѿ��н���ȥ�ᱻŤ��������
�����׼���˰ɣ��������׻��ھ�����������ء�
�����ң�����˵�����Ƕ��Ե������Ѿ��õ�����Ӧ��
��Ӧ�ˡ�

����ʲô��վ���Աߡ�
��΢�������ӡ������ޱ�������ס�

{	StL(1000, @0, @0,"cg/st/st��·_ͨ��_˽��.png");
	FadeStL(300,false);}
���ǻ�·׿��
����Ȼ��������������������ġ�������������ӭ����
�ڵ�С��һ��������ʵİ�Ů��
���ǲ�Ը���һ�˵�����ˡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw��_��ʹ.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0180]
//���١�
<voice name="��" class="��" src="voice/ma03/0220130b42">
���������ס�����

{	FwC("cg/fw/fw��·_ͨ��b.png");}
//����·��
<voice name="��·" class="��·" src="voice/ma03/0220140b24">
��������

{	FwC("cg/fw/fw��_��ʹ.png");}
//���١�
<voice name="��" class="��" src="voice/ma03/0220150b42">
�������ء�����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//	DeleteStA(300,false);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0190]
���޻���˵�Ŀ���������һ��������˭��һ����
����·�����������գ������Ƚ�����ȽϺÿ���
��һ�ߡ���������ת�������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//	StL(1000, @0, @0,"cg/st/st��·_ͨ��_˽��.png");
//	FadeStL(300,false);

	SetFwC("cg/fw/fw��·_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0200]
//����·��
<voice name="��·" class="��·" src="voice/ma03/0220160b24">
�������ն������������𣿡�

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0220170a00">
�����ԡ�
���������ˣ�ʵ�ڱ�Ǹ����

{	FwC("cg/fw/fw��·_ͨ��a.png");}
//����·��
<voice name="��·" class="��·" src="voice/ma03/0220180b24">
����ȫ���ص�Ǹ��
�������ǵĸ��þ��ˡ��Ҹ���ô��л�źá���

//����·��
<voice name="��·" class="��·" src="voice/ma03/0220190b24">
���Ǳߵ�ŮʿҲ�Ǿ����𣿡�

{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0220200a00">
����������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0210]
����һ�������Һ��Ѽ򵥵�����˵����
�����������Ļش���ܹ�ȥ��

�����ǰ��⵱���ҵ�η������
��������Ǻ�����Ц��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw��·_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0220]
//����·��
<voice name="��·" class="��·" src="voice/ma03/0220210b24">
�������������ر��л��
���Ҷ������ˡ����û�����Ļ����ٴ�žͻᱻ
���뵽�Ǹ���ը��ȥ�˰ɡ���

//����·��
<voice name="��·" class="��·" src="voice/ma03/0220220b24">
����Ϊͬһ��������ˣ�������Ϊһ��
���ס����ն��������ҷǳ���л������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0230]
����·�������������ͷ��
����һ���������Զԡ�

���Ծ���С��
�����ڻ�·������˵�����ǽ����ϼ��е���ԸӦ�ò���
һ��ɡ�����Ҳ���Ů��һ����
���������侲��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw��·_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0240]
//����·��
<voice name="��·" class="��·" src="voice/ma03/0220230b24">
����Щ�ͱ���޷���ص��¹��ˡ���

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0220240a00">
��������һ�㡭��
�����ǣ�������û�ܸ��ϡ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0250]
���������Ĵ���ɢ�ģ���ɫ�Ľ�����Ƭ���������š�
�������ڿ�ʼ�����Ǿ��Բ����ܵġ������������״̬
�Ͳ�����û��п��ܵġ�

����Ԥ�����սӦ��Ҳ�ǿ��еġ������������Ļ���ȡ
�������ĳɼ��ء�
�����ң�˭�������Ǹ�Ԥ�����ء��޸���ͣ����Ů����
����֮ǰ����������

���뵽�����ʱ��ͻȻ��
�������Ҷ��Լ���õ��Ӿ���Ϣ��������ʡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetVolume("@mbgm*", 2000, 0, null);
	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0260]
//��������
<voice name="����" class="����" src="voice/ma03/0220250a00">
����ɫ�ġ�����Ƭ����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0270]
���Ǹ���Ϯ���Ϳɫ�ǿ������ͷǳ����޵���ɫ��
����ɫ�������������Ҳ���еġ����������ǡ���

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw��·_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0280]
//����·��
<voice name="��·" class="��·" src="voice/ma03/0220260b24">
������<RUBY text="������">�þ���</RUBY>��
�������ǡ������š��ͺ͸տ�ʼ˵��һ������

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0220270a00">
��������·��������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0290]
����֮ǰһֱ�ر��������۾��������һ���������
���侲������ֹ�������������е�Ϸ�ʡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw��·_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0300]
//����·��
<voice name="��·" class="��·" src="voice/ma03/0220280b24">
����������ζ���Ҫʤ���ı����У�����Ҳ��
Ӯ���˵Ķ��֡�����ô�������ּһ���ʧ���ˡ�
���ⲻ���޷�Ԥ�ϵ��뷨Ŷ����

{	FwC("cg/fw/fw�衩���װ_����.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/ma03/0220290a07">
��˵��û���ء�
����ʽ�����ϸ���ϡ��ƽ�����°ɣ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0310]
������ͷ�������
�������Ů��Щ��Ц��˵�š�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw�衩���װ_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0320]
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/ma03/0220300a07">
��Ŀ���������Լ����С�
�������Ǻ��ߡ���Ϊ�ǲ��ܿ��Լ����������ߣ�
�ִ����ض�����������ע�⡣���ױ����ӹ���
�ļһ���ΪĿ�ꡣ���ԡ�����

{	FwC("cg/fw/fw��·_ͨ��a.png");}
//����·��
<voice name="��·" class="��·" src="voice/ma03/0220310b24">
���������ջص�ʱ������<RUBY text="��������">���˵���</RUBY>��
���ں�������̫�������ַ���
������û�����˵ķ����ֶΡ�
�����������������Ч����̫���ˡ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0330]
���ҿ����˾���ը�ɵ�������Զ�ĵط���
����ȷ������Ӧ���������

�������������Ŵ�С����һ���ļ�ªľ�䡣
��ľ���д����Ϯ�����ֵ��������ʮ�ֵİ��ࡣ
��������ֻ���������˹ž�Ĩ��һ����

����Ҳֻ�Ǵ�����Ͽ�����

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw��_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0340]
//���١�
<voice name="��" class="��" src="voice/ma03/0220320b42">
�������������ף���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0350]
����·�������Ի���������
��Ů��ֹͣ�˿�����̧ͷ�����ס�

{	DeleteStA(300,false);}
����û�лش�
����׼ȷ�������ҵ��������˹�ȥ��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fwһ��_Ц�a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0360]
//��һ����
<voice name="һ��" class="һ��" src="voice/ma03/0220330a02">
����������
��ԭ����ˡ�����

{	FwC("cg/fw/fw����֦_Ц�.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma03/0220340a03">
����ѽ��ѽ����

{	FwC("cg/fw/fw����_ͨ��a.png");}
//�����衿
<voice name="����" class="����" src="voice/ma03/0220350a04">
�����š���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0370]
��һ��¶������Щʧ��ı��顣���������ӣ������ؿ�
�еļ������ں���Ŀ�ĵ���ת��
����������������Щ�������������Щ���Σ�����˵��
��һ���ء�

//�������SE��Ҫ����ľ����_���롢�������ҕ���Ƥ�ä����֤�Ф��ˡ�
{	OnSE("se���L_����_��ж�",1000);//���ߩ`ע��
}
����·����������ǡ�
�����������˽�ȥ��

{	SoundPlay("@mbgm03",0,1000,true);//���٥󥸳��ǈ��Εr��BGM�Ȥ���
}
��Ȼ���Ƕ������ɴ�����س��������ǵ���Ұ�С�
�����Ž����������ɫͷ����

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw��_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0380]
//���١�
<voice name="��" class="��" src="voice/ma03/0220360b42">
������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0390]
����·��˵�����������ƺ�����Ϊ��֮ǰ��ȫ��ͬ
�ĸ��顣
�����Բ���ʧȥ���е�װ�����֡�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw��·_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0400]
//����·��
<voice name="��·" class="��·" src="voice/ma03/0220370b24">
�������Ҳ����������ƻ����ġ�
�������Ϯ�����Բ��ᡣ��

{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0220380a00">
����ô�����ƻ����ǡ�����

{	FwC("cg/fw/fw��·_ͨ��a.png");}
//����·��
<voice name="��·" class="��·" src="voice/ma03/0220390b24">
����Ԥ���
����Ȼ��ȷ��һ����ʧ�������������޷����
�Ķ�������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0410]
������ɫ����״�������ǻ������ͳ�����������
������ǻ�·�ٹ�ȥ�ù�������ɡ�

����̾��һ������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����֦_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0420]
//������֦��
<voice name="����֦" class="����֦" src="voice/ma03/0220400a03">
��ʡ�˺ܶ๦�����ء���

{	FwC("cg/fw/fw����_Ц�a.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0220410a00">
����ȷ����

{	FwC("cg/fw/fw����_ͨ��b.png");}
//�����衿
<voice name="����" class="����" src="voice/ma03/0220420a04">
�������Ǹ�лһ�������������λ���˰ɡ���
���ܿ�ϧ���������ڵ�״���ƺ����������ˡ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0430]
����ȷ��Ҳ��������ǡ�
��û�б�Ҫ���ô���ȥ��������Ԥ�����ˡ�

����Ȼ�����б�Ҫȥ���ʣ����Ǻŵ���Ϣ�ǲ���
���ڡ�
��������Ԥ�����Ǽ�����Ļ���Ӧ����ʧ��
�����������Ҿ����ⲻ̫���ܡ�

������ˡ��ѡ��Ľ���Ҳͬʱ����˴���������
һ���֡�
���ᱻһ����������ը��Ҳ̫����ʵ�ˡ�

������Ҳ����˵���Ѿ����Դ��¾��������ˡ�
�����죬�һ�μӴ�ͣǣо�ս��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0440]
//��������
<voice name="����" class="����" src="voice/ma03/0220430a00">
��ȷʵ����Ҳ������������������˯��
������û�뵽���µ���񡪡���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0450]
����Ը����Ȼʵ���ˡ�
�������������������޷����⡣

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw��_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0460]
//���١�
<voice name="��" class="��" src="voice/ma03/0220440b42">
�����ס�������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0470]
�������������������������ֽ��ۡ��ҿ����Աߣ�
�����˻�·�ٱ������������ϵ����ӡ�
����·��������ظ���������ͷ��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw��·_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0480]
//����·��
<voice name="��·" class="��·" src="voice/ma03/0220450b24">
����Ǹ�����١����㵣���ˡ�
����Ȼ������Ҳ�ǿ��Եġ����������������
���Ľ��еĻ���û�������˰�������

{	FwC("cg/fw/fw��_ͨ��b.png");}
//���١�
<voice name="��" class="��" src="voice/ma03/0220460b42">
��������Ҫ���ġ�
��̫���ˡ�����ġ�����

//���١�
<voice name="��" class="��" src="voice/ma03/0220470b42">
������̫���ˡ�����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0490]
��Ů��ֻ��������ͣ���ظ��š�
��˲�䣬�Ҹе�����������

�����٣������б��������Ķ�����
��������Ǻ��¡���û�ܱ���ס��������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw��·_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0500]
//����·��
<voice name="��·" class="��·" src="voice/ma03/0220480b24">
�������١�
��������˵�ģ���������Ǹ����ҵ�ȫ������

{	FwC("cg/fw/fw��_ͨ��a.png");}
//���١�
<voice name="��" class="��" src="voice/ma03/0220490b42">
��������

{	FwC("cg/fw/fw��·_ͨ��b.png");}
//����·��
<voice name="��·" class="��·" src="voice/ma03/0220500b24">
��һ�ֶ�ʮ����һ����
��������֪���𣿡��١���

{	FwC("cg/fw/fw��_ͨ��a.png");}
//���١�
<voice name="��" class="��" src="voice/ma03/0220510b42">
�������š�
��Ŭ���������

{	FwC("cg/fw/fw��·_ͨ��b.png");}
//����·��
<voice name="��·" class="��·" src="voice/ma03/0220520b24">
��û����������ȥ�꣬��ϯ��������ֻ�����
������ɵ���������������ˡ�Ŭ�����ﱣ��
������������ŷ��ͳһս�����ߵļ�¼������

//����·��
<voice name="��·" class="��·" src="voice/ma03/0220530b24">
����Ҫ���Ǹ���������ս��
������δ����Ը�������綥��Ĺ�ȥ���𣡡�


{	FwC("cg/fw/fw��_ͨ��a.png");}
//���١�
<voice name="��" class="��" src="voice/ma03/0220540b42">
��������

{	FwC("cg/fw/fw��·_ͨ��b.png");}
//����·��
<voice name="��·" class="��·" src="voice/ma03/0220550b24">
����û���辩������ߵ������֡�
������Ҫ��ֻ���������߷���ѡ�����

//����·��
<voice name="��·" class="��·" src="voice/ma03/0220560b24">
��Ϊ�˵�������Ϯ�
��Ϊ�˵������㡣��

//����·��
<voice name="��·" class="��·" src="voice/ma03/0220570b24">
����һ�����ػ����ǡ���

{	FwC("cg/fw/fw��_ͨ��b.png");}
//���١�
<voice name="��" class="��" src="voice/ma03/0220580b42">
���������ס�����

{	FwC("cg/fw/fw��·_ͨ��b.png");}
//����·��
<voice name="��·" class="��·" src="voice/ma03/0220590b24">
�����ԡ���
����Խ���ҿ��ɡ���

//����·��
<voice name="��·" class="��·" src="voice/ma03/0220600b24">
����Խ����ļ��ޡ�
������ʵ���ҵĸ��𡣲١���

{	FwC("cg/fw/fw��_ͨ��a.png");}
//���١�
<voice name="��" class="��" src="voice/ma03/0220610b42">
��������

{	FwC("cg/fw/fw��_ͨ��b.png");}
//���١�
<voice name="��" class="��" src="voice/ma03/0220620b42">
�������ǡ�
�����ס�����

//���١�
<voice name="��" class="��" src="voice/ma03/0220630b42">
�����졭��һ����Ӯ��
��Ȼ�󡭡������縴�𡣡�

{	FwC("cg/fw/fw��·_ͨ��a.png");}
//����·��
<voice name="��·" class="��·" src="voice/ma03/0220640b24">
���š�����

{	FwC("cg/fw/fw����_Ц�a.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0220650a00">
������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0510]
���������磬��

������Ķ��㡣
��ֻ�Ƕ���վ�����

�����Ǹ���������ס������׷�����ٶȡ�
��׷�����һ�е��ٶȡ�
��
�������������У�ֻΪ��ù�����

���������Ǹ�������ˣ�ң����û�з������˵ı�Ӱ��
���ڹ���ϯ�ϣ�
���Լ��Ѿ�ʧȥ�������и������۵���Ӱ��

�����ǣ����ߵľ���ң���ɼ���

��������Ȼ���Ҳ���װ����������ϡ�
����Сʱ����ȷʵӦ���������������룬����֪��ʱ
�ͷ����ˣ���ȴ�ˡ�

����ȴ�˹¶������硣

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	ClearWaitAll(2000, 2000);

//�����ʥ��`�øжȣ�
//$Another_Flag = $Another_Flag++;
//�룺�ϕN�ե饰�򣲤ˉ����090922��
	$ma03_022_routeFlag = true;
	$Others_Flag = $Others_Flag+2;

	judgment_of_count();

..//������ָ��
//�Υե����롡"ma03_023.nss"


}




