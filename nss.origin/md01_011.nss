//<continuation number="70">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md01_011.nss_MAIN
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
	#bg010_���������Q_01=true;
	#bg011_��������_01a=true;
	#ev101_�ץ��`��_a=true;
	#bg025_ɽ�}��ɭa_01=true;

	//����`�ȥե饰���x�k֫���Τ�GameName
	$PreGameName = $GameName;

	$GameName = "md01_012.nss";

}

scene md01_011.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

..//������ָ��
//ǰ�ե����롡"md01_010.nss"

//���v�|������
//���z��
	PrintBG("�ϱ���", 30000);
	CreateColorSP("�}��ܞ", 15000, "#000000");
	OnBG(100,"bg010_���������Q_01.jpg");
	FadeBG(0,true);
	Delete("�ϱ���");
	FadeDelete("�}��ܞ", 2000, true);

	WaitKey(1000);

	OnBG(100,"bg011_��������_01a.jpg");
	FadeBG(3000,true);
	SoundPlay("@mbgm16",0,1000,true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
��Ҳ������˵����Щ��ְɡ����������������ڵ���
լۡ���Ҹ�����Ӧ�������ĵ��䡣

������ɱ�˷�������ͨ�����е�״�����ҹ�Ȼ�����޷�
Ĩȥ�Լ��Ĳ��ʸС�
������������ȻҪ�ܵ����롣

������������Ϊ�縺���£��������ʱ��Ҫ�뿪��լ
ۡ�������ҳô˻���Ҳ�ص��������С�
����ֻ��һ��˵���Լ��������뿪һ��ʱ�䡣

��������������Ǻŵ��ټ�����ô���ֱ���Ҫ�ص����С�
��������֮ǰ��Ӧ�������Ҷȹ����������Ӱɡ�
��Ҳ����˵���ҵõ��������з�ƽ�˾���ʱ�䡣

�����ң�����������Ȼ����Ϊ��̰��˯�ߡ�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����룺�y�ǺŤȤΑ��L
	OnSE("se�M��_����_�ե�å���Хå�01",1000);
	CreateColorEXadd("�}��ܞ", 10000, "#FFFFFF");
	Fade("�}��ܞ", 600, 1000, null, true);

	CreateTextureSP("�}����", 8000, Center, Middle, "cg/ev/ev101_�ץ��`��_a.jpg");
	CreateColorEXmul("�}����Ļ", 8100, "#847000");
	Fade("�}����Ļ", 0, 400, null, true);

	Fade("�}��ܞ", 300, 100, null, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
�������ҵ��׸���ν�����䡣

�����Ǻ��ǽ��ֶ����������ħ����
�����Ǵֱ����������ߣ���������Ⱥ�в������ĸ�
������������������Ĳ���֮·��

������Ҫ�������ֻ�����������������ǰ����Ϊ������
���ҲŻ������鷢չ������ز����������Ѿ�
����Ϊ�⻹�ָܻ������ˡ�������Ҳû��
ʱ���������ԡ����������һ�����׵���������ɢ��

�����뽫����������ǡ��������ǽ���ʵ�ֵķ�����
������֮���ս����࣬�Ҹ���ο˷��ء�

����������ͨ����˵��
�����ߵ�ս��Ҫ���ٿ��ߵļ��������е����ܡ��Լ���
�ߵ���ϣ��������ۺ���������

����һ���Һ͹�ļ�����������Զ�ҡ�ġ�
�����������Ĳ��ܲ�ࡣ��Ȼ�Ҳ����������Ҳ������
�ڶ��������Ⲣ����һ��һϦ�ܹ��ֲ��Ĳ�࣬����
�Ĳ�ࡣ�����ʵ���б�Ҫ������ܡ�

���ڶ������е�������û��̫��Ĳ�ࡣ
����ȷʵ�����ָо�������������<RUBY text="Gravity Control">��������</RUBY>������Ȼ��
�޿����ɵ���в��������������<RUBY text="Magnetic Control">��������</RUBY>Ҳ�ǿ�����
֮ƥ�е�������

��������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	Fade("�}��ܞ", 400, 1000, null, true);
	Delete("�}����*");
	FadeDelete("�}��ܞ", 600, true);

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
//��������
<voice name="����" class="����" src="voice/md01/0110010a00">
������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
���ٿ��ߺͽ��е�<RUBY text="����">���</RUBY>��<k>

�������ؼ���Ȼ����������ɡ�

��������һ�Ƶ���ػ�������λ����˵�Ļ���Ҳ����Ϊ
����ʶ�Ĳ�����ǿ���Ǹ���ʵ�𡭡�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����롤�ڶ�Ԓ
	OnSE("se�M��_����_�ե�å���Хå�01",1000);
	CreateColorEXadd("�}��ܞ", 10000, "#FFFFFF");
	Fade("�}��ܞ", 600, 1000, null, true);

	CreateTextureSP("�}���뱳��", 8000, Center, Middle, "cg/bg/bg025_ɽ�}��ɭa_01.jpg");
	CreateColorEXmul("�}����Ļ", 8100, "#847000");
	Fade("�}����Ļ", 0, 400, null, true);

	Fade("�}��ܞ", 300, 200, null, true);

	SetFwC("cg/fw/fw��Դ̫_ͨ��.png","Sepia");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050]
//����Դ̫��
<voice name="��Դ̫" class="��Դ̫" src="voice/md01/0110020b55">
�����ǣ�ֻ������װ����װ��
�������ã����ƺ�����ô����
���а�����

//����Դ̫��
<voice name="��Դ̫" class="��Դ̫" src="voice/md01/0110030b55">
�������ҹ۲������ǳ�ɫ�Ľ��У�
�ܾ��á����š�
���о�����������û����Ϻá���

//����Դ̫��
<voice name="��Դ̫" class="��Դ̫" src="voice/md01/0110040b55">
�������ǵ��ߡ���������ʵ��
������Ҳ������������ӵ��<RUBY text="��">���</RUBY>��
���߰�����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//������
	Fade("�}��ܞ", 400, 1000, null, true);
	Delete("�}����*");
	FadeDelete("�}��ܞ", 600, true);


	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0060]
//��������
<voice name="����" class="����" src="voice/md01/0110050a00">
����Դ̫���ˣ�

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0070]
����ʱ����û������������ص��Ҹ档
��������û���ģ����߾��ǵ��ߣ�ֻҪ���ʹ���ߵ���
־����һ�ж�����ʹ���߸���

�������������뷨Ҳû���κα仯��
��ʹ�ý��е����Σ���ʹ�õĽ�������ⶼ���ɲٿ�
�߶��Գе��������κ��˷���Ҳ�޷�����������
����Ϊ��

�����ǡ���

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0080]
//��������
<voice name="����" class="����" src="voice/md01/0110060a00">
������ȫ���˽������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0090]
���ƶ���֡�
����������ɵ����塣

���Ҳ�֪����һ�㣬Ҳ����Ϊ��������������ҡ�
�������������û��ȥ�����˽����Ը����Ҳ��ԭ��֮
һ��

����ֻ�ǰ�������������Ľ��С�
����˵�����ؾ������ɵ�����<k>��һ���ǽ������뷨
͵͵�ص�����ο�˰ɡ�

���ҵ�����й�����
���Ұ�һ�ж������������׵����䡣

�������ں��཭��ε�ս���У��������������ص���ʵ��
���������ӵĽ��ɣ���û�и��Ӷ���������ǵĶ��⡪��

���Ƿ�������Ҫ������������Ը��
����ȴȡ������ȫ�����Ч�������ϱ�����ʱ�����Լ�
����ҵ���ʽ�����˾�š�

�����ڣ����Ǻ��������������ѡ�


�����ԡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0100]
//��������
<voice name="����" class="����" src="voice/md01/0110070a00">
������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0110]
�����Դ�����Ϊ���У�ͬʱ�ֲ��������и���<RUBY text="��">�ٿ���</RUBY>��
�������Լ���������ս����
������Ҫ����Ϊͬ�����

�����Ǿ����������ŶԷ���
�����ǲ�ȥ����Է�����ʹ����������������Ҫƾ����
������־��������ս����

����������������ʤ�����Ǻš�

����������Ϊ������ʶ������Ϊ�������ϵ��ӱܣ�
����ʵ����಻��ͬ�Ĳٿ��ߺͽ����ܷ��Ϊ�ϸ����
�ߣ����Ƿ񶨵ġ�
����Ϊ���ߵĹ�ϵ����Ҫ���໥���Ͽ�ʼ��

������Է������ʣ��໥��ͬ��Ȼ���Ϊ��Ե�����ߡ�
���ӹ�������ͱ���Ϊ�嵶��

������ǰ���Һʹ����ڼ������е�״�����Լ��Ե���ʽ
������嵶��
������֮�����ǲ�δ���½�����ʽ�����ǡ���û����
��Ը���������ƺ�Ҳû����Ը��

��Ҳ����˵����ʵ�Һʹ�����Ϊ���ߣ�����ȫ���ϸ��
�д�Ʒ��
������Ϊֹ�Ҷ�û�����⣬��Ϊ�Ⲣ�������⣬������
Ϊ���̶ֳ��ö����Ϳ����ֲ���

�����ǡ����µ�����ұ���Ĺ��ˡ�
���������������ǺŵĻ���

����������һ���ٿ��ߺ�һ�����У���Ҫ��Ϊ<RUBY text="����">һ��</RUBY>���ߡ�
�������������֮ǰ���������ҵ���־���ô������ӣ�
����������һ��ġ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


}

..//������ָ��
//�Υե����롡"md01_012.nss"