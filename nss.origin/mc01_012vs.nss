//<continuation number="140">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mc01_012vs.nss_MAIN
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

	$GameName = "mc01_013.nss";

	CP_AllDelete();

}

scene mc01_012vs.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

..//������ָ��
//ǰ�ե����롡"mc01_011vsaba.nss"
//ǰ�ե����롡"mc01_011vsabb.nss"

//������
	PrintBG("�ϱ���", 30000);
	SoundPlay("@mbgm13",0,1000,true);
	CreateTextureSP("�}����", 100, Center, Middle, "cg/bg/bg002_��a_01.jpg");
	Delete("�ϱ���");

	SetFwC("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
//��������
<voice name="����" class="��������" src="voice/mc01/012vs0010a01">
��������ô���������
���ղŵĵ�����ʲô����


{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/mc01/012vs0020a00">
���Ǹ��ُؼ׵�����


{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/mc01/012vs0030a01">
�����ُؼ׵�����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateTextureEX("�}�ݏؼ׏�", 18000, -360, -460, "cg/ev/resize/ev922_���å������`�ܩ`�ǥ��۩`��ʂ�_al.jpg");
	SetTone("�}�ݏؼ׏�", Monochrome);
	Fade("�}�ݏؼ׏�", 1000, 1000, null, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
����������ø��ُؼ׵����ģȣ֣��С�

����Ϊͨ����Ͻ���ǰ������Ƶ�о�Ķ��ع��죬ʵ��
�߹�ͨ�����ڵ���
�����������е���˲���������ը�ѡ�¶��������о
�ᴩװ�׵Ľṹ��

����������õ��ڵ��������������ᣬ���ٶȷǳ��ߣ�
�ڽ����뷶Χ�ڹ�������ʹӵ����ʿ�ķ����񾭣�Ҳ��
�Իرܡ�
����˵һ���������룬���پͻ��轵��

����������û����ھ����������ʶ֮ʿ֮�䱻����Ϊ
��ʵ�������걸��
��Ȼ����ϧ���ǡ�����ȫ�������ʿ�����������ˡ���
���ò����е��ٷǳ����أ�����޷�������

������������Ļ������ڽ���ʵ�������Ļ���ս�������
һ���ᷢ���޴�ı䡣
��������˾޴�ı�����

����Ȼ���������ڵ����ܹ�������Ǿ͸�����������ĳЩ
���µ���ʿ���ں����Ķ�������Ϯ����
��������ӹ�����Ǵ�������֯���ˡ�

�����Ҽ�߼��ߵļ������;�������������֮���Ǵ��ģ
����֯��
��
���������ޡ����ǣǣȣѡ�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	FadeDelete("�}�ݏؼ׏�", 1000, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0028]
���������ĸ������һ�������˼�������Σ��ϢϢ���
�ɡ�
����ʶ�������ȥ֧Ԯ���ж��������ס����


������������ˣ��͸�������������ԥ�ˡ�
��
�����˼��һ��֮���ҵĽ��귴�������˼��֡�

��һ������Ϊ�ղŵ���һ�������˱�ˮ�ඥ���Ч
���ɡ�
�����ھ����ϻָ����侲��

���侲������˲�佫��һսϸϸ���롣

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_���L.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
//��������
<voice name="����" class="����" src="voice/mc01/012vs0040a00">
���������ǡ��������
�������տ���ʱ�;��ú������


{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/mc01/012vs0050a00">
����������ָ�����
���ܾ����Ǹ���ʿ��ս����ʽ<RUBY text="������">�����</RUBY>����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
������Ϊ�ӵ��˵ľٶ���Ī����ɢ���������˵ĸо���
��Ҳ�����ԭ�򡪡�

�������ƺ����޷�һ���Ա�֮��
�����У����ʲôҪ�ء���

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050]
//��������
<voice name="����" class="��������" src="voice/mc01/012vs0060a01">
����һ���ǡ���
����Ϊ��������


{	FwC("cg/fw/fw����_�@��.png");}
//��������
<voice name="����" class="����" src="voice/mc01/012vs0070a00">
��ʲô����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0060]
����Ȼ��������ʣ���ȴ��û���ڴ��õ��ش�

�����Դ��������ƺ���Ϊ������

���·���������ȷ��һ�㣬���Ʋ�˵����

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0070]
//��������
<voice name="����" class="��������" src="voice/mc01/012vs0080a01">
������ְ�����ô�붼����֡�
������ҵ��ж�û��Ļ������Ǹ���ʿ
<RUBY text="������������">��ȫ�ٳ����</RUBY>��<RUBY text="����">ֱ��</RUBY>��<RUBY text="������">ȫ����</RUBY>
<RUBY text="��������">��������</RUBY>����

//��������
<voice name="����" class="��������" src="voice/mc01/012vs0090a01">
���������������ʮ���Ǹ���ʿ<RUBY text="������">��û��</RUBY>
����Ϊ��λ�ֱ��������������ƽ�������ǿ
����������
�����߶���ʮ�������ⰴ��˵�Ǹ��������ܵġ���


{	FwC("cg/fw/fw����_ŭ��a.png");}
//��������
<voice name="����" class="����" src="voice/mc01/012vs0100a00">
��������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateTextureEX("�}��", 4000, Center, -90, "cg/ev/ev946_�����֣ӥ��å������`_a.jpg");
	Fade("�}��", 1500, 1000, null, false);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0080]
����Ȼ����˴�����˵�Ļ�������������Щ��ʱ�䡣

��ͨ������ʿ������̫������֮ʱ��ֱ�������������
֮�ʣ����ڷ����ƽ�����Ҳ���Ƿ���������������������
һ�����������������װ�ף�����ǿ������ע��������
�����־�����л�Ҳ����ʿ�ļ���֮һ��

���������ô����ı��������ͣ�����˵��ֱ�������ཻ֮
�ʣ������ƽ��������������ʮ�����ཻ��֮ʱ�����ƽ�
����������Ϊ�㣬ת���ڼ�������ǿ����ע��ʮ��������
������̫�����������򣬼����������⡣

����Ϊ�����л�����Ҫ��ʱ�䣬ֱ������Ϊ��λ������ƽ��
������ﺽ��װ�׵�ɢ����ʿ�������޷����̫��������ʤ
����

����Ȼ�����������벻����ֻ����ɲ����еĻ���������ʹ
�������ķ�����<RUBY text="��������">��ȷ����</RUBY>��
���˶����õ���
�����Ǵ�����˵�ĵ��˵�����֮����������ָ����¡�

�����߶���ʮ��
�����������ƽ���������ǿ�����߾�ȫ�������������
�ٶȣ���ʹ�������Ϯ����

��������������������֮����������
��
�����������ܡ�

��˵�������������ӵ�е�����Ϊʮ��Ҳ�е���ӵ�е�
����Ϊ�ˡ����˶��졣
������������ĳ����Ҳ������ʿӵ�г�������һ����
�����ɡ�

����˵������������ʲô�ˣ���ֻ��ӵ��<RUBY text="����">ʮ��</RUBY>��
��������ʹ����ӵ��ƽ��ֵ��ʮ�ɵ��������������
���䱾�˶���Ҳ�൱��ʮ�ɡ�
������������Ȼ�ġ���Ȼ����ӹ���ɡ�

���߸�����
�����ŵĵ���<RUBY text="��������������������">ʹ���˶�������������</RUBY>
�����ˡ�

�����ٴ�������˵��
��
������������������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	FadeDelete("�}��*", 500, false);

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0090]
//��������
<voice name="����" class="����" src="voice/mc01/012vs0110a00">
������ټ��ϹŹֵ����У����������Ʋ�ʹ��
��ʲôҩ���


{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/mc01/012vs0120a01">
���ǰ���
����������֪Ϊ��Ҳ���쳣�������п��ܡ���

//��������
<voice name="����" class="��������" src="voice/mc01/012vs0130a01">
����������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0100]
��������ˣ���Ȼ�����޷���������ɡ�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����å������`
	CreateSE("SE01","se���L_����_��ͻ�M01");
	MusicStart("SE01",0,500,0,1000,null,false);
	CreateTextureEX("�}�ݺ���", 1100, Center, Middle, "cg/st/3d���å������`_�Tͻ_���La.png");
	Request("�}�ݺ���", Smoothing);
	Zoom("�}�ݺ���", 0, 125, 125, null, true);
	Move("�}�ݺ���", 300, @0, @-30, DxlAuto, false);
	Fade("�}�ݺ���", 300, 1000, null, true);

	SetFwR("cg/fw/fw���å������`_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0110]
//��С�ġ�
<voice name="С��" class="С��" src="voice/mc01/012vs0140b33">
����֪����������
����ϲ������ĸ�׺�ʬ�尡����!!��

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0120]
��Ȼ����û�н���ʱ���ˡ�
����ħ�������־���������������쫷�Ϯ�����ǡ�

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//��ǰ���K��
	ClearWaitAll(2000, 2000);


..//������ָ��
//�Υե����롡"mc01_013.nss"

}



