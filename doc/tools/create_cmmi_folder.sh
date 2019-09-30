#!/bin/bash
#
# create_cmmi_folder.sh
#
# Copyright (C) 2018-2023 Eric MA  <eric@company.com>. All Rights Reserved.
#
# History:
#    2019/09/30 - [Eric MA] Created file
#
# Maintainer: Eric MA <eric@email.com>
#    Created: 2019-09-30
# LastChange: 2019-09-30
#    Version: v0.0.01
#

cmmi_folder=(
	01.REQM-需求管理-过程域
	02.PP-项目计划-项目域
	03.PMC-项目监控-项目域
	04.MA-度量与分析-支持域
	05.PPQA-过程与产品质量保证-支持
	06.CM-配置管理-支持域
	07.SAM-供应商合同管理-项目域
	08.RD-需求开发-过程域
	09.TS-技术方案-过程域
	10.PI-产品集成-过程域
	11.VER-验证-过程域
	12.VAL-确认-过程域
	13.OPF-组织过程焦点-组织域
	14.OT-组织培训-组织域
	15.IPM-集成项目管理-项目域
	16.RSKM-风险管理-项目域
	17.DAR-决策分析-支持域
)

function create_cmmi_folder()
{
	num=${#cmmi_folder[@]}
	i=0

	while [[ $i -lt $num ]]; do
		if [[ ! -d ${cmmi_folder[i]} ]]; then
			mkdir ${cmmi_folder[i]} > /dev/null
			echo "create ${cmmi_folder[i]} ... done"
		fi
		let i++
	done
}

main()
{
	create_cmmi_folder
}

main "$@"
