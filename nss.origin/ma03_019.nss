//<continuation number="1630">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene ma03_019.nss_MAIN
{

//�룺��᪥ǥХå���

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

	$GameName = "ma03_020.nss";

}

scene ma03_019.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

..//������ָ��
//ǰ�ե����롡"ma03_018.nss"

//������`��
	PrintBG("�ϱ���", 30000);
	CreateColorSP("�}��ܞ", 15000, "#000000");
	OnBG(100,"bg037_����������`��a_01.jpg");
	FadeBG(0,true);
	Delete("�ϱ���");
	DrawDelete("�}��ܞ", 1000, 100, "blind_01_00_1", true);

	SoundPlay("@mbgm16",0,1000,true);

	SetFwC("cg/fw/fw����_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
//��������
<voice name="����" class="����" src="voice/ma03/0190010a00">
��������ô������

{	NwC("cg/fw/nw�ᥫ�˥å�.png");}
//������㣯�ᥫ��
<voice name="����㣯�ᥫ" class="����������" src="voice/ma03/0190020e018">
��û�취�ˡ�
��ֻ���͵��������ȥ�����ˡ����������޷�
������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
������ӵĻ��⡣
��Χ����������塪���������æµ��ά�޹��Ļش�
��Ԥ���е�һ����

����Χ����и��ѡ�ֺͺ�����Ա��
������Ǵ���������˵��������Ϊ���Ѳ����������
�İɣ�û�п���ʲô���ɵ����ߡ�

���������������ֵ�û��ɵ��ˣ����ڵ����Ǵ��Ҳû
����ȥ���˰ɡ�
��һ��������߼�¼��ƴ����ʮһλ���������λ����
��ս��ʱ�򡪡������¹��ˡ�

��������ǰ�ľ�����������Ϊ��Ӱ�������˶���һ����
ͷɥ����ģ����
��һ������ȥ������ӵ��˺���һ��Ժ÷�����ʰһ�£�
�õ��������������Ļش�

����������е��鷳�ˡ�
�����ھ���ӵĲ��ң��ұ�ʾͬ�顣��Ҳ���˶��ѡ���
�����������⡣

����󣬻���û�������Ԥѡ����ȷ�ϼ����塣
����ô˵�����ڻ�û�г�ս���ı����������𡭡�����
����ʲô�����ɱ��˴������۾��ء�

����Ȼ����˵���߾��޿��ܡ�
��֮ǰ�����������ߡ���������������̽����ܵĹ��
��������֮ǰҲ�����뵽�������ּһ���ڡ�

���������������թ��ʵ���������쳣��
��û��˭�ܱ�֤�����ٴη���ͬ�������顣

�������Ӵ����ĽǶ������ǣ��Լ���ȻҪ�����Ǻţ�
��ô�޷��ϳ����˵Ĵ��ڣ������´���Ǿ����޷�����
�İɡ�
�����������������û���õġ�

�������ȣ����Ǹû�����δȷ�ϵĽ��аɡ������ϻ���
��صĶ����׼��Ԥ���������ѡ�֣��Ա����⡣
�����������ڴ��С��ѡ����ˣ�Ҳ������֡�

����Ҫ�����ⷽ��ĵ��飬������������ʧȥ�ʸ��
�����㡣
��������û�����������������ˡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
//��������
<voice name="����" class="����" src="voice/ma03/0190030a00">
��������û������ϰ��������ѡ���𣿡�

{	NwC("cg/fw/nw�ᥫ�˥å�.png");}
//������㣯�ᥫ��
<voice name="����㣯�ᥫ" class="����������" src="voice/ma03/0190040e018">
����ѽ��û�д�������
�����ǵ���ϰ������Ƕ��������ļ�����
�����ϹŶ���������ζ������ܲμ����ֱ���
�İɡ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
��������սǰ�����塣
��ȷʵ�޷���ս�������Ҫ������һЦ�ǵ�������ν��
���ʱ���������������Ҫ��ս�Ļ�������ҲҪ�ﵽ��
���Ľ�����Ы������ˮƽ�ɡ�

�������Ļ�������ӵ���������Ѿ����ɱ����ˡ���Ȼ
�����Ҹ�����ȥ�����������������죬�����ڱ���һ��
�����ð��������뿪�Ļ��Ƚϸɴ࣬���һֱ�������
�ڳ�ѡ�ֵ����ӣ��������Ϊ��̬��

��������Ա��Ų��Ỷӭ��
�����Ƶ��ҵ��ķ����ˡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fwһ��_Ц�a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050]
//��һ����
<voice name="һ��" class="һ��" src="voice/ma03/0190050a02">
���ն����������Ѿ�׼�����ˡ���

{	FwC("cg/fw/fw����_Ц�a.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0190060a00">
��лл�㡣��

{	FwC("cg/fw/fwһ��_�դ�.png");}
//���դ�
//��һ����
<voice name="һ��" class="һ��" src="voice/ma03/0190070a02">
��������

{	FwC("cg/fw/fw����֦_Ц�.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma03/0190080a03">
����ѽ���������ˡ�
������ˮ�����ǵ��ˡ���

{	FwC("cg/fw/fw����_Ц�.png");}
//�����衿
<voice name="����" class="����" src="voice/ma03/0190090a04">
��������˼ϸ���ء�
����������ִ��ˡ���

{	FwC("cg/fw/fwһ��_ͨ��a.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma03/0190100a02">
������û��˵���������������ǵķݶ��ɡ�
�����˾������ɡ���������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0060]
��һ��׼�����Ƿ��źʹ����̲衣
������Ǵ��̵������İɡ���Ȼ���ص����㡣
������������Ѿ��ܲ����ˡ�ȷʵ�����ܻ��չ��ˡ�

�������Ǯ�������ɡ�
����һ����ô���ţ�һ��������һ�����š�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fwһ��_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0070]
//��һ����
<voice name="һ��" class="һ��" src="voice/ma03/0190110a02">
��˵�������ҿ�������ֵļһ��ء���

{	FwC("cg/fw/fw����_ͨ��b.png");}
//�����衿
<voice name="����" class="����" src="voice/ma03/0190120a04">
����֣���

{	FwC("cg/fw/fw����֦_����.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma03/0190130a03">
�����㱼�����𡣡�

{	FwC("cg/fw/fw����_ƣ��.png");}
//�����衿
<voice name="����" class="����" src="voice/ma03/0190140a04">
���ǻ�����ͷ�۰�������

{	FwC("cg/fw/fwһ��_����.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma03/0190150a02">
���������֡�
���е㣬�����ֵĸо�����һȺɱ�����ڵļ�
���ڸ���ת��תȥ�ġ���

{	FwC("cg/fw/fwһ��_ͨ��b.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma03/0190160a02">
�����ǣ��ְڳ�һ���������µ���������
����͸�����˰ɡ���

{	FwC("cg/fw/fw����֦_ͨ��b.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma03/0190170a03">
������Ҫ̫����ɣ�
���������Ǳ����ĸ߳�������������˭����ɱ
�����ڵİɡ���

{	FwC("cg/fw/fwһ��_����.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma03/0190180a02">
���š���
�����ˣ���Űɡ���

{	FwC("cg/fw/fw����_ͨ��b.png");}
//�����衿
<voice name="����" class="����" src="voice/ma03/0190190a04">
��Ҳ���ǰ��˵Ķ���Ҫ�Ի�ʤ�Ķ�����Щ����
��ɡ�
����Ȼ������Щų�����ܣ���Ҳ�����ǲ����ܣ�
����Ҳ�����ټ�����

{	FwC("cg/fw/fw����֦_ͨ��b.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma03/0190200a03">
�����ǣ��ڴ�ͻ���û��˵���ء���
������ǹ���Ʒ�ʵĲ�ͬ��
���Ȳ�˵������������ˡ���

{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0190210a00">
���ǣ���ξ���¡���

{	FwC("cg/fw/fw����֦_ͨ��b.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma03/0190220a03">
����������������ô������

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0190230a00">
�����Լ�Ҳ���ڿ��ǡ���

{	FwC("cg/fw/fwһ��_ͨ��a.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma03/0190240a02">
�������Ѿ����Ǿ���ӵ������ء�
��������������ȥ�˵Ļ�������Ҳû�м���
��������������˰ɡ���

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0190250a00">
���������ġ�
��֮ǰ������������������������֮ǰ����
���ǣ�ֻҪ�ڽ����﷢��Ŀ�꣬���������˽�
�Ϳ����ˡ���

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0190260a00">
�����Ŀ���Ѿ��޷�����ˡ���Ȼ�����ģ���
��Ԥ�����������ڣ����ǻ�û��ȷ�����ˡ�
����Ҫ�����˽ᣬ��Ҫ�ȵ��������ǵ����졣��

//��������
<voice name="����" class="����" src="voice/ma03/0190270a00">
�����ԣ�������Ҫһ�����壬�ܼ����������
����ר�õ������ͣ��һ��ʱ�䡣��

{	FwC("cg/fw/fw����֦_����.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma03/0190280a03">
������ܻ��Ǹ������ء�
�����˾���ǰ������Ѿ��񾭽����ˣ�������
����һ��Ļѻ������ǲ����õġ���

{	FwC("cg/fw/fw����_ͨ��b.png");}
//�����衿
<voice name="����" class="����" src="voice/ma03/0190290a04">
����Ϊ��Ҫ��ϸ�۲칤����Ա������Ҫ����
���õĽ��С�������Ҫ���ȹ̵���ݰ�����

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0190300a00">
��ȷʵ��ˡ�
������������ϣ�����ӵĳ�Ա������ݱ���
�Ǻ�����ġ�����

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0190310a00">
����Ϊ�ǲ����������ж��Ƚ����ɡ�
�����һ�������׼��ʤ��ǿ�ӣ�Ҳ�ͻ�������
������������ľ��䡣��

{	FwC("cg/fw/fw����_ͨ��b.png");}
//�����衿
<voice name="����" class="����" src="voice/ma03/0190320a04">
����ȷ������ô�����ء�
����û��ʲô�취������Щ�����ǲμ������
��ʤ�ء���

{	FwC("cg/fw/fwһ��_ͨ��a.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma03/0190330a02">
������������ƾ��ɾ����������ټ���Ŭ����
����᲻���а취����

{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0190340a00">
���ⲻ̫��ʵ��
���������

{	FwC("cg/fw/fw����֦_����.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma03/0190350a03">
�������Ű�������

{	SetVolume("@mbgm*", 300, 0, null);
	FwC("cg/fw/fw�衩���װ_Ц�.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/ma03/0190360a07">
��ûʲô�ģ��ܼ򵥺ܼ򵥡�
����λ����������Ϳ�����������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���衩��
	StR(1000, @0, @0,"cg/st/st�衩��_ͨ��_��װ.png");
	FadeStR(300,true);

	SoundPlay("@mbgm22",0,1000,true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0080]
����ͻȻ�����������������ͷ������һλ����ӡ����
�̵����ꡪ����������Ů����վ������ǰ��
����΢Ц�ţ����ĵض����ҵ�����

����Χ�Ĺ�����Ա������������
������û�˳�����

�����Ǵ��Լ����������޷�������Ů����ϵĹ��֤��
������Ϊ�·�ͻȻ������Ҳ��֪�������Ӧ���˰ɡ�
����Ů���˿���ȥ�������⡣

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//���ե饰���
//���衩��ȼȤ˻�äƤ��룯��äƤ��ʤ�

//$�衩������ = true;

.//�ե饰���
if($�衩������ == true){

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
..//��Ȥ˻�äƤ���


	SetFwC("cg/fw/fw����_Ц�a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0090]
//��������
<voice name="����" class="����" src="voice/ma03/0190370a00">
�������׻�С�㡣
�����Ϻá����ٴμ������Һ����ҡ���

{	FwC("cg/fw/fw�衩���װ_Ц�.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/ma03/0190380a07">
���ţ����Ϻã���硣��������׻�Ŷ��
�����ǹ�Ȼ����Ե�ּ����˰ɡ�����

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


}else{

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
..//���äƤ��ʤ�


	SetFwC("cg/fw/fw����_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0100]
//��������
<voice name="����" class="����" src="voice/ma03/0190390a00">
������ʧ���ˡ�
����������Ӧ���������ɣ�����������ʶ��һ
���𡣡�

//��������
<voice name="����" class="����" src="voice/ma03/0190400a00">
���ҽ����ն���������

{	FwC("cg/fw/fw�衩���װ_ͨ��a.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/ma03/0190410a07">
���ţ����ؾн���
���ҽ��������׻����Ǹ���Ұ�������ߡ���

{	FwC("cg/fw/fw�衩���װ_Ц�.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/ma03/0190420a07">
�������׻��Ϳ����ˣ���

{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0190430a00">
���������ˡ�
���׻�С�㡣��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


}


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
.//������


	SetFwC("cg/fw/fwһ��_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0110]
//��һ����
<voice name="һ��" class="һ��" src="voice/ma03/0190440a02">
���׻�����

{	FwC("cg/fw/fw����֦_����.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma03/0190450a03">
����������������

{	FwC("cg/fw/fw����_ͨ��b.png");}
//�����衿
<voice name="����" class="����" src="voice/ma03/0190460a04">
����������������

{	FwC("cg/fw/fw�衩���װ_ͨ��a.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/ma03/0190470a07">
�������ޡ��Ǳߵ��Ǵ���ĸ�����
����ô��Ҳ�������������ҽ��ܰɡ���

{	FwC("cg/fw/fwһ��_ͨ��a.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma03/0190480a02">
��������Ŷ����
�����ǡ�����

{	FwC("cg/fw/fw�衩���װ_����.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/ma03/0190490a07">
����Ȼ����ô��Ĳ����������˰ɡ�
������˵���ҿ��������ټ�����Χ��Щ��Ҳ
ֻ��һ����ʮ��Ǯ����Ʒ���Ѹ�������ν����
������ġ���

{	FwC("cg/fw/fw�衩���װ_ͨ��a.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/ma03/0190500a07">
������˵����������ɡ���

{	FwC("cg/fw/fwһ��_����.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma03/0190510a02">
�������ն�������
��һ�������˸о�������������һ��

{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0190520a00">
�����̰ɡ���

</PRE>
	SetTextEXC();
	TypeBeginTimeCIFO(0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0120]
��ֻ����ô˵�ˡ�

{	DeleteStR(300,false);}
���׻�Ůʿ��ҡ��ڵ�������������塣��ȫ���ܱ���
�����Ʊ��˵�ά����Ա�����ַ�����װ���ϡ�
���������û�֮�󣬽����丽����ȥ��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw�衩���װ_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0130]
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/ma03/0190530a07">
���������ⶫ���������ء���

{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0190540a00">
�������ó����𡣡�

{	FwC("cg/fw/fw�衩���װ_����.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/ma03/0190550a07">
�����ұۻ����ˡ�
��Ȼ��ת������Ť���ˣ�������������һ����
�������ˡ����ٳ���Ҳ�ѿ����ء���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0140]
��ά�޹����Ŀ���ࡣ
����������Ҳû�취����Ůָ�������⣬�����Ǹո���
�ӳ����������𱨸��Ҫ������һ�����ղŵı�����Ҳ
�����ˡ�

��ֻ��һ˲�䣬�������˺�������ά�޹�ͬ���Ľ��ۡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0150]
//��������
<voice name="����" class="����" src="voice/ma03/0190560a00">
����������������
�����Ǹղ�Ҳ�ó��˽��ۣ�������ȥ��������
ûʲô��İ취�ˡ���

{	FwC("cg/fw/fw�衩���װ_ͨ��a.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/ma03/0190570a07">
��������
���͹�ȥҲû�õ�Ŷ����

{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0190580a00">
��������ô˵����

{	FwC("cg/fw/fw�衩���װ_ͨ��a.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/ma03/0190590a07">
���������Ť���ˡ�
�����������Ҳ�޲��á���

{	FwC("cg/fw/fw�衩���װ_Ц�.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/ma03/0190600a07">
�������Ѿ��������ˡ�
������Ϊ���������Ѿ�������ϧ��ʹ�����ر�
����ʱ���˰ɣ���

{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0190610a00">
��������������Ҳ���ó�����
��ֻ������һ�¡�����

{	FwC("cg/fw/fw�衩���װ_����.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/ma03/0190620a07">
����Ϊ�����׻���
��û����ֻ����һ���ǲ��������Щ���ء���
��<RUBY text="����">����</RUBY>�Ļ��ſ��Դ���<RUBY text="������">������</RUBY>�ء���

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0190630a00">
��������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0160]
���Һ��������˷ǳ�����˼��Ļ���
���ڽ�����������ζԻ�����Ҳ����һ�����ɵı��顣

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw�衩���װ_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0170]
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/ma03/0190640a07">
�������أ�������һ���Ϣ�˰ɣ�
���ټ�����ǿʹ�õĻ���������Ҫ���˰�����

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0190650a00">
����������

{	FwC("cg/fw/fw�衩���װ_Ц�.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/ma03/0190660a07">
�������ˣ��ֵܡ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	StL(1000, @-30, @0,"cg/st/st�衩��_ͨ��_��װ.png");
	Move("@StL*", 300, @30, @0, DxlAuto, false);
	FadeStL(300,false);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0180]
����Ů��������ͷ����Ȼ���뿪�����塣
�����������ƿ����ԵĻ�еʦ�ǣ��ص�������ߡ�


</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw�衩���װ_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0190]
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/ma03/0190670a07">
�����硣��

{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0190680a00">
���ǡ���

{	FwC("cg/fw/fw�衩���װ_ͨ��a.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/ma03/0190690a07">
������������˵ʲô�𡣡�

{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0190700a00">
�������ס���

{	FwC("cg/fw/fw�衩���װ_ͨ��a.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/ma03/0190710a07">
���ܺá���������Լ����ǻ۱���Ҫʱ������
ǫ�顣
��������Ϊֻ������ǫ����ˣ��Ų���������ν
����Լ���Ӫ��ƭ�֡���

{	FwC("cg/fw/fw�衩���װ_Ц�.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/ma03/0190720a07">
��Ҳ����˵������˵�������㹻�����أ���
��ȷ��ÿ�µ�ʹ�÷��úͽ�Լ�����ѡ�
���������˵����ֵ�ø��˵��°�����

{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0190730a00">
�����»̿֡���

{	FwC("cg/fw/fwһ��_����.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma03/0190740a02">
���������ֶԻ����Թ�ͨ�𣿡�

{	FwC("cg/fw/fw����_ͨ��b.png");}
//�����衿
<voice name="����" class="����" src="voice/ma03/0190750a04">
����Ȼ���Ǳ��˶�û�����⣬�����û������
�İɡ���

{	FwC("cg/fw/fw�衩���װ_Ц�.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/ma03/0190760a07">
������սʿ����
����Ҫ������ǫ���Ϊų������Ϊ��������ɱ
��è����į��ɱ�����ӣ�ų����ɱ��ʨ�ӡ���

//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/ma03/0190770a07">
���Ⲣ��������ɫ�ĳ��еõ���һ����������
֭�ܽ�������⣡�����Ǽ�ҩ���������������
ҩ�͸������ˣ��ӷ����Ͻ��Ļ���Űɡ�
�������ұ���Ҫ�����㡣�ն���������

{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0190780a00">
���ڡ���

{	FwC("cg/fw/fw�衩���װ_�n�y.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/ma03/0190790a07">
�����˵�ʱ��������!!��

{	FwC("cg/fw/fw����_���L.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0190800a00">
����������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0200]
�����������˵�ʱ�������ˡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw�衩���װ_�n�y.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0210]
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/ma03/0190810a07">
���������ǰ��ս������ӿ���ˣ�
����Ҫ��<RUBY text="����">����</RUBY>�һ�׼���ģ���

{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0190820a00">
����������

{	FwC("cg/fw/fw�衩���װ_����.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/ma03/0190830a07">
������ô��ֻ���Ǳߵ������ء�
��������Ծ������������ģ����ȫ������ȥ��
�ղ��Ǹ���д�����ж��������ı����ַ�����

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0190840a00">
��ԭ����ˡ�
����ô������ν����ء���

{	FwC("cg/fw/fw�衩���װ_����.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/ma03/0190850a07">
�������ɣ���

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0190860a00">
����������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0220]
�������������ص����ʼ�ķ�������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw�衩���װ_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0230]
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/ma03/0190870a07">
������׼�����С�
����������Ǹ����в����ɡ���

//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/ma03/0190880a07">
����������ӾͲ����˳��ˡ���

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0190890a00">
���������кܶ����ʣ����ȵ�һ����
����û������Ʋ������ѡ�ֶ��Լ���������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0240]
������ӵ�ѡ�֣�ֻ�н����ս�����¹ʵ���һ���ˡ�
�������������ڡ�

����Ȼ����Щ���ˣ����ͽ��б������������������ˡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw�衩���װ_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0250]
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/ma03/0190900a07">
����������Ա�ú���Ϣ�ɡ�
�����ң���Ҳ�����ܹ�������ȫ������״���ɣ�
��Ȼ�����ް������������治����������¹�
֮���ѡ�־�����������

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0190910a00">
���������ȷʵ��ˡ�
�����Ǳ��𲢲���ѡ�ֵ��ҡ�����

{	FwC("cg/fw/fw�衩���װ_�@��.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/ma03/0190920a07">
�����������粻��ѡ����
���һ���Ϊ���Ǿ���ӵ��油ѡ���ء���

{	FwC("cg/fw/fw�衩���װ_Ц�.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/ma03/0190930a07">
�������ϵ����ּ��⡣
��ƽ��״������Ӿѡ�ֺ��񣬸�����<RUBY text="����">��ϸ</RUBY>
�᲻̫һ��������

//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/ma03/0190940a07">
��������ֻ�����ǽ��еĲ����߰���������

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0190950a00">
��������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0260]
����Ůһ˲�俴���˻���Ĺ���״����
�����ڲ��ݽ�������������ߵ��ˣ����ܿ�������ȷ��
������Ҳ���������˸е��������š�

���Ҳ�����ѡ�֣���Ҳ��������ʵ���ѡ���
��������������׷񶨣���ô���ټ���׷�ʵĻ����Ҿ�
�൱���Ծ��Ĺ�ˡ�

�����б�Ҫ��������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0270]
//��������
<voice name="����" class="����" src="voice/ma03/0190960a00">
��������Ȼ�Ҳ�����ѡ�֡�
��������ǰ�й����Ƶľ�������

{	FwC("cg/fw/fw�衩���װ_ͨ��a.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/ma03/0190970a07">
�����롣���������ĸ���˾���˲����û��𣿡�

{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0190980a00">
���ǡ�
���׸���ĳ����ҵ�ƻ��������̵�ʱ�������
�ҡ��������Ϊ�Ǹ���ҵ��Ӫ�񻯣������
��ʧ���ˡ���

//��������
<voice name="����" class="����" src="voice/ma03/0190990a00">
���Ҳμӹ�����С��ģ�����̡���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0280]
�������Ⲣ����ȫ�ǻѻ�����Ȼ��Ҳ��΢�ӹ���һ�¡�
��ȥ�����죬��Ҳ������һ��׷�����Ǻŵ��ټ���Ϊ��
���飬��Ӧ�������û�����ʽǱ����ĳ����ҵ����ȷʵ
�й����־�����

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw�衩���װ_Ц�.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0290]
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/ma03/0191000a07">
��ʲô����
���Ǿ�û�������˰�����

{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0191010a00">
����������ǳ��ࡣ
�������ǽ��С�����

{	FwC("cg/fw/fw�衩���װ_����.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/ma03/0191020a07">
�������һ�׼���ġ�
�����˶����������λ���壬��Ϊ�ֲ������ߡ�
�������ȫ��У�
�Ǹ������ɳ��Ŀɰ��ĺ��ӡ���

{	FwC("cg/fw/fw�衩���װ_ͨ��a.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/ma03/0191030a07">
��������������Ǹ��и���Ļ�����������֣�
Ҳ���������ͻ��Ϊ��������Ŷ����

{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0191040a00">
������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0300]
���ƺ��ܸ����ء�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw�衩���װ_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0310]
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/ma03/0191050a07">
����ȥ���Ǹ����������
�������Ϳ����˰ɣ���

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0191060a00">
�����ǣ���û��֧��Ѻ�������������

{	FwC("cg/fw/fw�衩���װ_Ц�.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/ma03/0191070a07">
�����ò��á�����Ѻ��
�����������ʹ�ã�����Ū������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0320]
��������Ů���׵�˵���������ô�����ȼ��Ʊ�����
����
���������������ź��������ʲ���

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0330]
//��������
<voice name="����" class="����" src="voice/ma03/0191080a00">
��������Ҳû����Ϊѡ�ֵǼǡ�����

{	FwC("cg/fw/fw�衩���װ_Ц�.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/ma03/0191090a07">
���һ���취��
���������ϡ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0340]
��������Ů���׵�˵������������Ļ�������˵���ƿ�
��·�ĳ�������˵�����������ָ�����ˡ�
�����������������൱������Ȩ����

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_ƣ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0350]
//��������
<voice name="����" class="����" src="voice/ma03/0191100a00">
������������

{	FwC("cg/fw/fw�衩���װ_����.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/ma03/0191110a07">
�����£ϣˣ���

{	FwC("cg/fw/fw����֦_Ц�.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma03/0191120a03">
�����һ�¡�
����Ҳ����˵�����𡣡�

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0360]
���������Զԣ������ξ����������Ů�Ի���
�������ξ�ı������ƺ���Щ΢��ĳɷ֡�������Ů��
�־���ķ�ʽҲ��Щ΢�̬��������Щ�䱸��

������˵��������Ů����֮�󣬴�ξһֱ��Ĭ��
����Ĭ����Щ����Ȼ��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw�衩���װ_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0370]
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/ma03/0191130a07">
����ʲô�£�
����ȫû�м����Ĵ��㡣��

{	FwC("cg/fw/fw����֦_����.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma03/0191140a03">
�������Ǻܼ򵥵��¡��׻�С�㡣
��Ϊʲô��<RUBY text="��">��</RUBY>Ҫ���Э�������أ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0380]
����������Ҳ��Щ΢��ĳɷ֡����ر�������Ǿ仰��
�������������ָо��Ǵ����

�����٣���Ůû��¶����Ӧ�ķ�Ӧ��
������ȫû�л�Ӧ�����ξ��΢��֡�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw�衩���װ_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0390]
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/ma03/0191150a07">
��������Ϊ�����þ�����˳�����
����Ȼ�����ԭ��ɣ���

{	FwC("cg/fw/fw����֦_ͨ��a.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma03/0191160a03">
��������

{	FwC("cg/fw/fw�衩���װ_Ц�.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/ma03/0191170a07">
�������ᣬ���辩�����֮����Ҳ����װ��
�������ʻ��ƽ��ɺͷ����ɵ���������һ�㣬
���ڲ�������һһ˵���˰ɣ���

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0191180a00">
���ǡ���

{	FwC("cg/fw/fw�衩���װ_ͨ��a.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/ma03/0191190a07">
�������أ����Ƿ����ɡ�
����˵��<RUBY text="����">��Χ</RUBY>Ҳ���޳��ɵļһ�ɡ�
����Щ���ҾͲ����ˡ���

{	FwC("cg/fw/fw����֦_ͨ��a.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma03/0191200a03">
��������

{	FwC("cg/fw/fw�衩���װ_ͨ��a.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/ma03/0191210a07">
���ѵõı�������ϣ����Ⱦ��ͭ���������Դ�
�ҵĽǶ���˵����������ɲ���ʤ�Ļ����һ�
�����š�
�������ҿ��˿���������Ķ�ʮ�ӡ���

{	FwC("cg/fw/fw�衩���װ_����.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/ma03/0191220a07">
���ܳ�Ϊ�����ɵ�ֻ�еڶ�λ����ʮһλ��
����ӡ����������ƽ��ɾ���������
�������Ļ��������������˳��������ɾ���
ȫ�����ˡ���

{	FwC("cg/fw/fw�衩���װ_����.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/ma03/0191230a07">
���������������˵���ǲ����޳ɶĲ����ġ�
���ֻ�о���������Ψһ�Ļ�鰡��
���������˰�����һ�Ѱɣ���

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0191240a00">
������������

{	FwC("cg/fw/fwһ��_ͨ��b.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma03/0191250a02">
��ʲô����
���ؼ�ֻҪ����ʤ�Ϳ����˰ɣ�����û��ͬ�飬
����ô��Ҫ�����𣿡�

{	FwC("cg/fw/fw�衩���װ_Ц�.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/ma03/0191260a07">
������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0400]
����Ů��˫�ֵ����ƾٵ����ĸ߶ȣ��������ϣ�Ȼ��
���������˶��˼��£�����ñ��Ӻ���Ц��Ц��
����Ů��������б����ʮ�����ҵĽǶȴ���һ����

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����ߥ���ŭ��

	SetComic(@0,@0,15);
	SetFwC("cg/fw/fwһ��_ŭ��c.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0410]
//��һ����
<voice name="һ��" class="һ��" src="voice/ma03/0191270a02">
���ն�������
����û�������ܺ���һ����ͬһƬ����¡���

{	DeleteComic();
	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0191280a00">
����ס����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0420]
����ֻ������˵��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0430]
//��������
<voice name="����" class="����" src="voice/ma03/0191290a00">
������������Ȼ�Ǹ��˾�����ֻ����λ��һ��
�ܹ��õ������������������һ�㣬Ҳ������
���Ϊ����ս������

{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0191300a00">
������˵��
����ͬ����Χס���Ϊ�Լ����ֵ����壬��ס
�����ж������Լ������ʱ������Ȼ�ض�ȡ��
һλ������������

{	FwC("cg/fw/fwһ��_ͨ��a.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma03/0191310a02">
���������������Ƿ����𣿡�

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0191320a00">
����Ȼ�ˣ�¶�ǵط��������᷸�档
����ֻҪ����¶�ǾͿ����ˡ�����

//��������
<voice name="����" class="����" src="voice/ma03/0191330a00">
������ֻҪ�ܹ������Լ���ʤ�ܣ����ڷ���Ҳ
��û������ԥ�����ɡ�
����Ϊ���˵������Ҳ�й����ƻ���������
�˳������������µ��辩��ʤ�����ֶΡ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0440]
������������Ȼʤ��������Ŀ�ģ�������Ҫ��ʤ����
�õ����˶��ڶĲ�������ͬ��Ӧ���ǲ����������̶ֳ�
�ı��аɡ�
��������΢ƽ��Щ�ķ�������п��ܡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw�衩���װ_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0450]
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/ma03/0191340a07">
����������£��������и���飬������
��һ������

//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/ma03/0191350a07">
����������Ǽһ���л������ܹ�����ǣ��ס
������ӱ��ǣ�Ҳ���ܹ��������Ĳ�����
�档��

{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0191360a00">
������˵�������ڴ�����һ���𡣡�

{	FwC("cg/fw/fw�衩���װ_ͨ��a.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/ma03/0191370a07">
�������������İɣ���

{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0191380a00">
��������̫�߹������ˡ���

{	FwC("cg/fw/fw�衩���װ_ͨ��a.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/ma03/0191390a07">
�����𣿡�

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0460]
����ŮЦ�ţ����ı��鿴�������������˶���˵̫����
��������������
�������Һ������Ů�������ã�����ȫ��������Ϊʲô
����������ҡ�

�����ǣ��ҵ��뷨�Ѿ������̶���ĳ���������ˡ�
����Ƴ��һ�ۣ��۲���ͬ���ǵı��顣

��һ����Ȼ��ϲ���������ƺ��ܹ�����������顣
������Ȼ����������ս�辩������ս�����޵����ɡ�

���������Ӱڳ����˿�������ƽʱһ����

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0470]
//��������
<voice name="����" class="����" src="voice/ma03/0191400a00">
��̹�ϵ�˵���Ҳ�����û����Ȥ��
�����Լ������ٵ�ʱ��Ҳ���������Ϊװ��ѡ
�֡���

{	FwC("cg/fw/fw�衩���װ_Ц�.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/ma03/0191410a07">
�����š�
���к��Ӿ͸���������

{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0191420a00">
�����ǣ��Ҳ�֪�������Լ������������ܷ��
�ܾ��ٵĸ��ɡ�
��������һ�㣬���б�Ҫ�һ���������ȷ
�ϡ���

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0191430a00">
������������
�������������ٸ����ش�ɡ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0480]
������һ��գ��գ�ۣ������ξ�����ͷ��
��������������������������˼��

��ֻҪ�ڳ�������Ů�����̬�ȣ�����ӾͲ��ó��ˣ�
���ǾͿ��������ж���
����Ȼ������Ҫ���������壬����������˵û�б����
���ʵ��ˡ�

�������ڽ���������������⣬�������������׻�Ů
ʿ���С�
������ܹ���ˣ��Ǿ�̫�����ˡ�

�������Ҳ����ϣ�����������λ��Ů��Щ����ʵ��
����������Ҳ��һ��ʥ�������������ǣ�Ҳ��������
��������̤��ĵط���

��������������������£���Ҳ����һ�������˿���
�ķ��롣
������˵������û�ܷ��ּ�����������

����������£�������ͨ��ĳ���ֶ������˴����ĸо���
�������˲�����ϵĿ����Ի��ø��ӿ��ܡ�
����ôʣ�µķ���ֻ�а��߷�����ս�ˡ�

��Ŀ��Ӧ����Ǳ���ڲμӾ�ʤ������֮�аɡ�׷��������
����־���ɺ����Ǹ��ӽӽ���
���Լ���Ϊѡ�ֽ�������֮�У��ڡ��ѡ����ѵ�˲���
�й��������������

�����ݴ����ĸо������ѡ��ķ������¾������졣����
�����ڹ���ϯ����Ȼ�ع۲졣
�����������<RUBY text="����">�ֺ�</RUBY>����Ԥ�Ƶص�ĵط��ȴ���

���ۼ��˴������ڵľ�ʤ�����У�<RUBY text="������������">���Ǻŵĳ���</RUBY>������
�����Է������¡�
������������״���ӳ�һ��һ�롣

����������һ�㣬�ҵĻش����Ѿ��ӽ���Ѵ��ˡ�
������Ҳ�����Ƕ��Һ��ʶ��ѡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_�a��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0490]
//��������
<voice name="����" class="����" src="voice/ma03/0191440a00">
�������������ĺ��⣬�һ����������˽����
����ʵ�ڲ�����˼����

{	FwC("cg/fw/fw�衩���װ_����.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/ma03/0191450a07">
������ûʲô��
���Ǿ�������֮ǰ�����ɡ����Ȱ�������á���

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0191460a00">
����������
�������𣿡�

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0500]
����ǿ���ô����ϲ���Ȩ��ѡ���������ǲ��ϳ���
�����´�Ż�����ɥʧ�����ɡ�
����Ů�����������µ�Ц�š������Ǹ��������𣬻�
�����������ء�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw�衩���װ_Ц�.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0510]
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/ma03/0191470a07">
��û���⡣
�������Һܿ�ͻ�ᵽ����������ȴ������ԡ�
�������������׼������ġ���

{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0191480a00">
������
��������һ�㣬���ĺ����������ˡ���

{	FwC("cg/fw/fw�衩���װ_�@��.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/ma03/0191490a07">
����������ô���£���

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0191500a00">
�������Լ��ľ����ý����ϳ���
�������ս�Ļ�����

{	FwC("cg/fw/fw�衩���װ_�@��.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/ma03/0191510a07">
�������𣿡�

{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0191520a00">
����ǰ�ҵõ���һ����
����Ȼ�Ǻܾɵ����塭�����һ��Ǿ��ã�����
����Ϥ��������á���

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0191530a00">
�����û��̫�����⣬ϣ������ͬ�⡣��

{	FwC("cg/fw/fw�衩���װ_ͨ��a.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/ma03/0191540a07">
���ţ��š�û�취����
����Ȼ����ô˵������

{	FwC("cg/fw/fw�衩���װ_����.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/ma03/0191550a07">
�������İ����ߡ��ٴ�ʧȥ��Ӯ��������Ŀ��
���ᡣ
������Ϊʲô�����ϼ��˿ֲ��ͻ���������
���������ߡ�Ҳ��ȫ����ʱ���ڡ�����

{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0191560a00">
��ʵ�ڱ�Ǹ��
���ѵ����������⡣��

{	FwC("cg/fw/fw�衩���װ_Ц�.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/ma03/0191570a07">
������û��ϵ��
����ô����������������

{	FwC("cg/fw/fw����_Ц�a.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0191580a00">
���ǡ��ͷ����ˡ�
��ף��������졣��

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	DeleteStA(300,false);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0520]
����Ů�����뿪�ˣ�������Ŀ������ȥ��
����̧��ͷ��ʱ�����Ѿ������ˡ����ĳ��ֺ��뿪��
��������һ����

��������Ҳ������������һ�������Ǵ�Ȼ�ķ�Χ��
�����������˻ָ����ԣ����ղ�˵����Щ��֮ǰ����
��Ҫ�ȴ�һ��ʱ�䡣

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0530]
//��������
<voice name="����" class="��������" src="voice/ma03/0191590a01">
�������������Ϊ������������������𡣡�

{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0191600a00">
����������˵�ɡ�ʵ����Щ̫˳���ˣ����˲�
�ò��е����ɡ�
���ղ��㶼�����˰ɣ���

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/ma03/0191610a01">
�����¶����ˡ�
�����������һ��ǵ�һ����˵�����о����õ�
���尡����

{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0191620a00">
������ô�������أ�

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/ma03/0191630a01">
����������������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	ClearWaitAll(1000, 1000);

}

..//������ָ��
//�Υե����롡"ma03_020.nss"