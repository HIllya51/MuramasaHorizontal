//<continuation number="230">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene ma04_002.nss_MAIN
{

	$TITLE_NOW=" ��������������ƪ ������������� ";

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

	if($Ichizyou_Dead == true){#ev112_һ���򤪊������ä��������=true;}
	else{}

//�룺�ǥХå�
//	$Ichizyou_Dead = true;

//�룺���ע��

	//����`�ȥե饰���x�k֫���Τ�GameName
	if($Ichizyou_Dead == true){
		//��δ�i���i�ж���
		$BasGameName = $GameName;
		$GameName = $GameName + "_k";
		$AllRead = Conquest($ConGameName,$GameName,null);
	
		//�������O����
		if(($SYSTEM_skip && #SYSTEM_skip_express && $AllRead) || ($SYSTEM_skip && #SYSTEM_skip_express && #SYSTEM_skip_absolute)){
			SkipOut();
		}else{
			$MainGameName="@->"+$GameName;
			GameMainSet();
			call_scene $MainGameName;
			GameMainSet2();
		}
	}else{
		//��δ�i���i�ж���
		$BasGameName = $GameName;
		$GameName = $GameName + "_i";
		$AllRead = Conquest($ConGameName,$GameName,null);
	
		//�������O����
		if(($SYSTEM_skip && #SYSTEM_skip_express && $AllRead) || ($SYSTEM_skip && #SYSTEM_skip_express && #SYSTEM_skip_absolute)){
			SkipOut();
		}else{
			$MainGameName="@->"+$GameName;
			GameMainSet();
			call_scene $MainGameName;
			GameMainSet2();
		}

		//��δ�i���i�ж���
		$GameName = $BasGameName + "_k";
		$AllRead = Conquest($ConGameName,$GameName,null);

		//�������O����
		if(($SYSTEM_skip && #SYSTEM_skip_express && $AllRead) || ($SYSTEM_skip && #SYSTEM_skip_express && #SYSTEM_skip_absolute)){
			SkipOut();
		}else{
			$MainGameName="@->"+$GameName;
			GameMainSet();
			call_scene $MainGameName;
			GameMainSet2();
		}



	}

	//���x�k֫������ץȼ��ӥե饰�O����
	$PreGameName = $GameName;
	$GameName = "ma04_003.nss";
}

//�룺ͨ�^�å�����ץ�
scene ma04_002.nss
{

	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

..//������ָ��
//ǰ�ե����롡"ma04_001.nss"



//�����ľ��������T��

	PrintBG("�ϱ���", 30000);
	CreateColorSP("�}�\Ļ��", 1500, "Black");
	Delete("�ϱ���");

	CreateTextureEX("�}�ƥ�100", 2000, Center, Middle, "cg/sys/Telop/lg_���ľ�.png");
	Fade("�}�ƥ�100", 2000, 1000, null, true);

	WaitKey(2000);

	FadeDelete("�}�ƥ�100", 2000, true);

	WaitKey(2000);

}



scene ma04_002.nss_i
{

	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

..//������ָ��
//ǰ�ե����롡"ma04_001.nss"



//�����ľ��������T��

/*
	PrintBG("�ϱ���", 30000);
	CreateColorSP("�}�\Ļ��", 1500, "Black");
	Delete("�ϱ���");

	CreateTextureEX("�}�ƥ�100", 2000, Center, Middle, "cg/sys/Telop/lg_���ľ�.png");
	Fade("�}�ƥ�100", 2000, 1000, null, true);

	WaitKey(2000);

	FadeDelete("�}�ƥ�100", 2000, true);

	WaitKey(2000);
*/

..//��᪡�һ������ʤ飰���ء������ʤ飰����
//����᪡�һ������ʤ飰���ء������ʤ飰����


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
.//�񣰣�
//�񣰣�
	PrintBG("�ϱ���", 30000);
	CreateColorSP("�}��ܞ", 15000, "#000000");
	Delete("�ϱ���");

	SoundPlay("@mbgm14",0,1000,true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
����������Ķ�
�����Ǹ������µ������־��

�����׽̵�����
��ʲô�Ƕ�

���Ӷᣬ
��թƭ��
�����ţ�
��������

��������һ�̵����ҡ�
���ú�������ǳ���׶�ȴ��֣�صĻ��

������������ˡ�
��Ȼ�����һ���δ�����׵��¡�

��Ϊʲô��һ��Ҫ���޶����ء�

��Ϊʲôһ��Ҫ��ȡ����֮�
��Ϊʲôһ��Ҫ��ƭ��
��Ϊʲôһ��Ҫ���ѣ�
��Ϊʲôһ��Ҫ���ķ�У�

�������ⷢ�ʣ���������ҡ���Դ���
��
�������޷�˵����

���ұ������޶��е����ɣ��޷��ó�����͡�
����������Ϊ���鲢����ˡ�

���´�ʱ��������һλ����ϸ��ƽ�޵���ѧ�ߣ���
˵���������Ű�������������ĸ�ף�ĸ���۰�����
һ�㣬����������ν���ɡ�
������Ϊ������ˡ�

���ѵ�������һ���ĵ���
������Ϊ���ˣ����������޶��У�������Ҫ�������ɡ�
��ǿѰ������ûʵĵ��������ڴˣ�������ƫ��
���ʡ�

������ԭ��������������񶨶�һ�������µ�����
�����Ʒ�������Ҳ��õ��Ͽɡ�
��ν����Ҫ�Ķ������뷨��

����ΪҪ�����Լ�����
����Ϊ�ǶԷ������ж񡪡�
����Ϊ����Ҳûʲô���ˡ���
���ж�Ҳδ�����ɣ�����˼����ʽ��

�������������񶨶񣬱ؽ�ʹ�������������
�ܵ��϶�����
������Ϊ�������󡪡�����Ҫ��ô��Ϊ��

�������ȥ�����ж�Ȼ�޷�ն����
�����˽Ի��ڷ񶨶��ͬʱ�ֶ�����Կ϶�����
�ݶ��еĴ��ڡ���Ϊ����������ͷ��������ˡ�

������������ֱ���ˡ��������ǻ���һ�Ρ�
���Ҳ�����ϡ������Ҳ��ܳ��ϡ�
������������ˡ���

����Ϊ�ˣ���־���������
��Ϊ��Ŀ�ġ�����һ���⡣�ұ���
�����

�����Ҳ�в��ò������ж������ɡ�
��Ӧ���С�����Ϊֹ����Ҳ������������ɫɫ���ˡ�
ȷʵ�����Ѿ���;ĩ·��Ψ���ж���һ����·��

���ȱ���ˣ����վ��Ƕ�
���Ǳ���񶨵���Ϊ�������á��Ȳ����ѡ�
�ĸ��־ͽ���϶���

����ν��
������Ϊ���Ǳ���������<RUBY text="����">ԭ��</RUBY>����Ϊ��

�����ԣ��Ⲣ�ǵ���
��������ͷ��ȥ˼��������ȥ������ܡ�

��������ȥ��֪��
�����޶��еı�Ҫ�ԡ�

�������������״˷�����Һ���˵�Լ�����⡣
��������δ���Ͼ��������ԭ����δ��ָ������
����<RUBY text="����">���</RUBY>��

��Ȼ�����Ҽ��Ÿ��״�����ǧ����ȷ��
����������Ȼ�������Ų��ɡ�

�����һ�����������ģ����޶��С�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	ClearWaitAll(2000, 1000);

	Wait(1000);

//������
	PrintBG("�ϱ���", 30000);
	CreateColorSP("�}��ܞ", 15000, "#000000");
	OnBG(100,"bg008_����_01.jpg");
	FadeBG(0,true);
	Delete("�ϱ���");
	FadeDelete("�}��ܞ", 1000, true);

	SoundPlay("@mbgm30",0,1000,true);

	SetFwC("cg/fw/fwһ��_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
//��һ����
<voice name="һ��" class="һ��" src="voice/ma04/0020010a02">
������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
��̾Ϣһ����
�����������ڶ��������롣

������������ƣ�͡�
����Ϊû��ս��������

������������˿��û�ж�ҡ��
�����дӸ��׺�����ĸ����ѧ����ս�����ɡ�

��Ȼ��������<RUBY text="������">�Ǹ���</RUBY>Ϊ�еĶ���ԣ������㻹������
��������ԶԶ������

���ȱ���ˣ���Ȼ��Ҫս����
��ϣ�������Լ�ս����

��Ȼ����û��ͬ�⡣
����Ҳ��������Ȼ���������������������Ҳ
����ͬ�⡣

������֮�˾���ս��Ҳֻ�ǰװ�������
��Ҳ���˻�е����㣬ȴ�޷����ȱ��ˣ�
Ҳ�޷������κ�����ĳɹ������ֻ���ͬ��
�����޴���鷳��

�����һ��Ҳ�����ס�
�����Բſ������Լ�û��һ����С�

����������롣
��ϣ���õ�ս����������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���ڶ�Ԓ��һ����Ȥ������}������äȒ���

	EfRecoIn1(18010,300);
	CreateTextureSP("�}�ţ�100", 5100, Center, Middle, "cg/ev/ev112_һ���򤪊������ä��������.jpg");
	EfRecoIn2(300);


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
������ϣ���ܹ������Ǹ��ˡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetNwC("cg/fw/nw�̎�.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050]
//������㣯�̎���
<voice name="����㣯�̎�" class="����������" src="voice/ma04/0020020e051">
����֡���

{	FwC("cg/fw/fwһ��_����.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma04/0020030a02">
��������

{	NwC("cg/fw/nw�̎�.png");}
//������㣯�̎���
<voice name="����㣯�̎�" class="����������" src="voice/ma04/0020040e051">
��籡����֣���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	EfRecoOut1(300);
	FadeDelete("�}�ţ�100", 0, true);
	EfRecoOut2(500,true);

	SetFwC("cg/fw/fwһ��_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0051]
//��һ����
<voice name="һ��" class="һ��" src="voice/ma04/0020050a02">
������ʲô����

{	NwC("cg/fw/nw�̎�.png");}
//������㣯�̎���
<voice name="����㣯�̎�" class="����������" src="voice/ma04/0020060e051">
��ûʲô���������ˡ�
���ش��ҵ����⡣��

{	FwC("cg/fw/fwһ��_ͨ��a.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma04/0020070a02">
�����������

{	NwC("cg/fw/nw�̎�.png");}
//������㣯�̎���
<voice name="����㣯�̎�" class="����������" src="voice/ma04/0020080e051">
��ʲô������û��������!?
��һ�ٶ�ʮ��ҳ�ĵ��������⣡��

{	FwC("cg/fw/fwһ��_ͨ��a.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma04/0020090a02">
��������

{	OnSE("se�ճ�_��_����᤯��01",1000);
	NwC("cg/fw/nw�̎�.png");}
//���̿ƕ��᤯�������Ѥ�Ѥ顣
//���̎������ĤΥ��㥰�äݤ�
//������㣯�̎���
<voice name="����㣯�̎�" class="����������" src="voice/ma04/0020100e051">
��һֱ�ڷ�����
�����Ǵ����𣡡�

{	NwC("cg/fw/nw�̎�.png");}
//�����`��
//������㣯�̎���
<voice name="����㣯�̎�" class="����������" src="voice/ma04/0020110e051">
�������϶��������������ֲ�˯�߲���ɡ�
��������ѧ�������������˵��ģ�
���Գɲ��������Ĵ��ˣ�������ĸ�
����С�����ﵱ��Ů��������

{	FwC("cg/fw/fwһ��_ͨ��a.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma04/0020120a02">
�����ݣ�������һ����õ���=�ףȣӡ���

//��һ����
<voice name="һ��" class="һ��" src="voice/ma04/0020130a02">
������˵�����ɾ���ʽս��һ��̨������
����˸��������ͼ�������ţ�̣�
�����ף������Σ�������С��ɰ���Ƴɡ�
���ԣ�Ϊ���婖�֡���

//��һ����
<voice name="һ��" class="һ��" src="voice/ma04/0020140a02">
�������ɡ��������˿��ƿ��ܻ���һ����
��˺�ѡ�����������������Ĵ𰸣�
�ó���һ�幫������ͻƽ𷢶�������
��������ԵĻ��Ӽ�Ϊ�İ˹����

//��һ����
<voice name="һ��" class="һ��" src="voice/ma04/0020150a02">
�����д��룬���婖����һ����İˡ���
��������������������

{	FwC("cg/fw/fwһ��_ͨ��a.png");}
//����ϡ�����ơ����i��
//��һ����
<voice name="һ��" class="һ��" src="voice/ma04/0020160a02">
���𰸡�
���ƻ������˵ĳ����Ϊ���������������������

{	NwC("cg/fw/nw�̎�.png");}
//������㣯�̎���
<voice name="����㣯�̎�" class="����������" src="voice/ma04/0020170e051">
�����������ش���ȷ����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	OnSE("se�ճ�_��_�����Q��01",1000);

	CreateTextureEX("�}����100", 100, Center, Middle, "cg/bg/bg001_��b_01.jpg");
	Fade("�}����100", 2000, 1000, null, false);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0080]
����������������λ��
��Ȼ�����������ա�

��ͬʱ��Ū�����еĶ�С���顣
�������������Ǹ��Ѿ������С��ׯ�
��������������������и������Ķ�����

����������񴥽ǵģ�����������
��������Ʒ�ı��䴥����һ������ʶ��Ȼ���ʡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fwһ��_Ц�a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0090]
//��һ����
<voice name="һ��" class="һ��" src="voice/ma04/0020180a02">
��ȥ�����ɣ�

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0100]
������������ļƻ���
�����ÿ�춼���ظ�ͬ������������Ѿ�����
ϰ�ߣ���Ȼ����һ�����ܼ�����
��������ˣ�����Ҫȥ��

�������������ڹ��Ρ�
�����׽̵�����ֻ��ͨ���������ﲢ�ж����
ֵ���ˣ����ܹ�ƾ�Լ���ϲ��ѡ��֪ʶ��

������˵����Ȼ�Լ��������񣬾ͱ��뱧��ǫѷ��
̬��ѧϰһ��֪ʶ��
���Ǹ���˵�������Ӽ����ˡ���˵����ѧУ��ѧ
ϰ��֪ʶ���ǳ���Ҫ��

�����Զ���ѧϰҪ������������ѧ�����޿�Ŀȫ��
Ԥϰ��ϣ������׵ĵط�Ҳ����ʦ��̽�����Ѿ�
�����˽̲ĵ�ȫ�����ݡ�
��Ȼ������ȴ�ֲ���ȥ����һ��¥��

����Ϊ���»��б�Ķ�����Ҫѧϰ��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fwһ��_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0110]
//��һ����
<voice name="һ��" class="һ��" src="voice/ma04/0020190a02">
����֪����������ʲô����
����Ը��û�ж���ȥ���顭����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0120]
���뾡���������

���������棬����ѧϰ��
������ֻ�е�Ρ���ҲҪѧ��ʲô��

��Ϊ���ܹ���һ��μ�ս����

   �����о�һ����ڿ��ٶȿ�ʼ��
�������ս��˱����������һ���ٴΰѷ�����ζ
�������εĻ���������С�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	ClearWaitAll(1000, 2000);

..//������ָ����
//�Υե����롡�񣰣�����"ma04_003.nss"
//�룺�������ȡ��񣰣����ˉ��

}



.//�񣰣�
//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
scene ma04_002.nss_k
{

	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
.//�񣰣�
//�񣰣�

//��������
	PrintBG("�ϱ���", 30000);
	CreateColorSP("�}��ܞ", 15000, "#000000");
	OnBG(100,"bg011_��������_01a.jpg");
	FadeBG(0,true);
	Delete("�ϱ���");
	FadeDelete("�}��ܞ", 1000, true);

//����������餬�����棿
	SetNwC("cg/fw/nw����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0130]
//������㣯���ء�
<voice name="����㣯����" class="����������" src="voice/ma04/0020200e038">
��δ�������İ˺š�
����������

{	OnFwC("cg/fw/fw����_����.png");
	Request("@FwC*", Smoothing);
	Rotate("@FwC*", 0, @180, @0, @0, null,true);
	Move("@FwC*", 0, @0, @-1, null, true);
	FadeFwC(0,false);}
//��������
<voice name="����" class="����" src="voice/ma04/0020210a00">
���ǡ���

{	NwC("cg/fw/nw����.png");}
//������㣯���ء�
<voice name="����㣯����" class="����������" src="voice/ma04/0020220e038">
������������˵�����������ʲô��
���ų��ϵ����ڼ����ϡ���

{	OnFwC("cg/fw/fw����_����.png");
	Request("@FwC*", Smoothing);
	Rotate("@FwC*", 0, @180, @0, @0, null,true);
	Move("@FwC*", 0, @0, @-1, null, true);
	FadeFwC(0,false);}
//��������
<voice name="����" class="����" src="voice/ma04/0020230a00">
���Ǹ����˶�����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//����ᦌm
	PrintGO("�ϱ���", 30000);
	CreateColorSP("�}��ܞ", 15000, "#000000");
	OnBG(100,"bg031_��ᦌm����_01.jpg");
	FadeBG(0,true);
	FadeDelete("�ϱ���", 1000, true);

	WaitKey(500);

	FadeDelete("�}��ܞ", 1000, true);

	SoundPlay("@mbgm19",0,1000,true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0140]
������λ�ڽ�֮����Ļ��ֱϽ��ҵ�о�����
������ʵ���Ǳ����о���ʩ���������ڽ���Σ����
�����ض����������ͱ����Ŀ�������<k>һ����ǰ
�յ������Ͼٱ�������ʼ���ֵ��顣

���ж������ɾ޴󣬲��ɳ�����Ա�Ż�Ǳ����飬
���������������ļ�����磬�Ӵ��������š�
����������˵�ǡ���������ɫ�����

�����⣬֤ʵ���ڽ�֮�������ذ������ɵ�ʧ�ٰ�Ƶ����
������ס��Ҳ��ʼ�Ժ����������ɣ����۷׷ס�
��������̬�ƺ���Ԥ�ڸ�Ϊ�Ͼ���

��������Ļ���ڽ��з��˵��ı������顣
��������δȷ�ϵ���������Űɱ�������������Ǻ�
�����������ж��б�Ҫ���̽��е��顣

��Ȼ�����£��ʺϲ����͵����ж����˲�ȴΪ��
���࣬��δͶ�������������˸��Ǳ����Ѱ��
�����ǡ���

����פ����˾������͹�����ʡ����ֻ���
���ʺ�ƽ�ľ�������Э����
�����ϡ�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	ClearFadeAll(1000,true);
//	ClearWaitAll(1000, 2000);


//	CreateColorSP("�}��ܞ", 15000, "#000000");
//	DrawTransition("�}��ܞ", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

..//������ָ��
//�Υե����롡"ma04_003.nss"


}



