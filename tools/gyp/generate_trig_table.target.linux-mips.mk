# This file is generated by gyp; do not edit.

include $(CLEAR_VARS)

LOCAL_MODULE_CLASS := GYP
LOCAL_MODULE := v8_tools_gyp_generate_trig_table_gyp
LOCAL_MODULE_STEM := generate_trig_table
LOCAL_MODULE_SUFFIX := .stamp
LOCAL_MODULE_TAGS := optional
gyp_intermediate_dir := $(call local-intermediates-dir)
gyp_shared_intermediate_dir := $(call intermediates-dir-for,GYP,shared)

# Make sure our deps are built first.
GYP_TARGET_DEPENDENCIES :=

### Rules for action "generate":
$(gyp_shared_intermediate_dir)/trig-table.cc: gyp_local_path := $(LOCAL_PATH)
$(gyp_shared_intermediate_dir)/trig-table.cc: gyp_intermediate_dir := $(abspath $(gyp_intermediate_dir))
$(gyp_shared_intermediate_dir)/trig-table.cc: gyp_shared_intermediate_dir := $(abspath $(gyp_shared_intermediate_dir))
$(gyp_shared_intermediate_dir)/trig-table.cc: export PATH := $(subst $(ANDROID_BUILD_PATHS),,$(PATH))
$(gyp_shared_intermediate_dir)/trig-table.cc: $(LOCAL_PATH)/v8/tools/generate-trig-table.py $(GYP_TARGET_DEPENDENCIES)
	@echo "Gyp action: v8_tools_gyp_v8_gyp_generate_trig_table_target_generate ($@)"
	$(hide)cd $(gyp_local_path)/v8/tools/gyp; mkdir -p $(gyp_shared_intermediate_dir); python ../../tools/generate-trig-table.py "$(gyp_shared_intermediate_dir)/trig-table.cc"



GYP_GENERATED_OUTPUTS := \
	$(gyp_shared_intermediate_dir)/trig-table.cc

# Make sure our deps and generated files are built first.
LOCAL_ADDITIONAL_DEPENDENCIES := $(GYP_TARGET_DEPENDENCIES) $(GYP_GENERATED_OUTPUTS)

### Rules for final target.
# Add target alias to "gyp_all_modules" target.
.PHONY: gyp_all_modules
gyp_all_modules: v8_tools_gyp_generate_trig_table_gyp

# Alias gyp target name.
.PHONY: generate_trig_table
generate_trig_table: v8_tools_gyp_generate_trig_table_gyp

LOCAL_MODULE_PATH := $(PRODUCT_OUT)/gyp_stamp
LOCAL_UNINSTALLABLE_MODULE := true

include $(BUILD_SYSTEM)/base_rules.mk

$(LOCAL_BUILT_MODULE): $(LOCAL_ADDITIONAL_DEPENDENCIES)
	$(hide) echo "Gyp timestamp: $@"
	$(hide) mkdir -p $(dir $@)
	$(hide) touch $@
