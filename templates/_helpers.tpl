{{- define "flask-app.fullname" -}}
{{- .Release.Name | printf "%s-%s" .Chart.Name | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "flask-app.name" -}}
{{- .Chart.Name -}}
{{- end -}}
