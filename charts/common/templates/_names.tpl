{{/*
输出Chart Name 例子：phddns
*/}}
{{- define "common.names.name" -}}
{{- .Chart.Name | trunc 63 | trimSuffix "-" -}}
{{- end -}}


{{/*
输出Chart Name和Chart Version 例子：phddns-0.1.0
*/}}
{{- define "common.names.chart" -}}
{{- printf "%s-%s" .Chart.Name .Chart.Version | replace "+" "_" | trunc 63 | trimSuffix "-" }}
{{- end -}}


{{/*
输出完整的程序名字 
*/}}
{{- define "common.names.fullname" -}}
{{- if contains .Chart.Name .Release.Name -}}
{{- .Release.Name | trunc 63 | trimSuffix "-" -}}
{{- else -}}
{{- printf "%s-%s" .Release.Name .Chart.Name | trunc 63 | trimSuffix "-" -}}
{{- end -}}
{{- end -}}

{{/*
输出完整的被依赖程序名字 
使用方法
{{ include "common.names.dependency.fullname" (dict "chartName" "dependency-chart-name" "chartValues" .Values.dependency-chart "context" $) }}
*/}}
{{- define "common.names.dependency.fullname" -}}
{{- if contains .chartName .context.Release.Name -}}
{{- .context.Release.Name | trunc 63 | trimSuffix "-" -}}
{{- else -}}
{{- printf "%s-%s" .context.Release.Name .chartName | trunc 63 | trimSuffix "-" -}}
{{- end -}}
{{- end -}}