{{- define "app1.name" -}}app1{{- end -}}

{{- define "app1.fullname" -}}{{ .Release.Name }}{{- end -}}

{{- define "app1.labels" -}}
app.kubernetes.io/name: {{ include "app1.name" . | quote }}
helm.sh/chart: {{ printf "%s-%s" .Chart.Name (.Chart.Version | replace "+" "_") | quote }}
app.kubernetes.io/instance: {{ .Release.Name | quote }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
app.kubernetes.io/managed-by: {{ .Release.Service | quote }}
{{- end -}}

{{- define "app1.selectorLabels" -}}
app.kubernetes.io/name: {{ include "app1.name" . | quote }}
app.kubernetes.io/instance: {{ .Release.Name | quote }}
{{- end -}}
