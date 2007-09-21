module Bytecode
  class Compiler
    Primitives = [
      :add,
      :sub,
      :equal,
      :compare,
      :at,
      :put,
      :fields,
      :allocate,
      :allocate_count,
      :allocate_bytes,
      nil, # was create_block
      :block_given,
      :block_call,
      :string_to_sexp,
      :load_file,
      :io_write,
      :io_read,
      :fixnum_to_s,
      :logical_class,
      :object_id,
      :hash_set,
      :hash_get,
      :hash_object,
      :symbol_index,
      :symbol_lookup,
      :dup_into,
      :fetch_bytes,
      :compare_bytes,
      :create_pipe,
      :gettimeofday,
      :strftime,
      :bytes_dup_into,
      :activate_as_script,
      :stat_file,
      :io_open,
      :process_exit,
      :io_close,
      :object_equal,
      :activate_context,
      :context_sender,
      :micro_sleep,
      :fixnum_mul,
      :bignum_to_s,
      :bignum_add,
      :bignum_sub,
      :bignum_mul,
      :bignum_equal,
      :regexp_new,
      :regexp_match,
      :tuple_shifted,
      :gc_start,
      :file_to_sexp,
      :get_byte,
      :iseq_compile,
      :task_raise,
      :fixnum_modulo,
      :bytearray_size,
      :terminal_raw,
      :terminal_normal,
      :fixnum_div,
      :marshal_object,
      :unmarshal_object,
      :marshal_to_file,
      :unmarshal_from_file,
      :archive_files,
      :archive_get_file,
      :archive_get_object,
      :archive_add_file,
      :archive_add_object,
      :archive_delete_file,
      :fixnum_and,
      nil,
      nil,
      nil,  # :float_to_s,
      nil,  # :float_add,
      nil,  # :float_sub,
      nil,  # :float_mul,
      nil,  # :float_equal,
      :fixnum_size,
      :file_unlink,
      :fixnum_or,
      :fixnum_xor,
      :fixnum_invert,
      :fixnum_neg,
      :bignum_new,
      :bignum_to_float,
      :bignum_and,
      :bignum_or,
      :bignum_xor,
      :bignum_neg,
      :bignum_invert,
      nil,  # :float_nan_p,
      nil,  # :float_infinite_p,
      nil,  # :float_div,
      nil,  # :float_uminus,
      :bignum_div,
      nil,  # :float_pow,
      nil,  # :float_to_i,
      :numeric_coerce,
      :hash_delete,
      :bignum_compare,
      nil,  # :float_compare,
      :fixnum_to_f,
      :string_to_f,
      nil,  # :float_divmod,
      :fixnum_divmod,
      :set_byte,
      nil,  # :float_round,
      :find_method,
      :bignum_left_shift,
      :bignum_right_shift,
      :bignum_divmod,
      :regexp_options,
      nil,
      :object_taint,
      :object_tainted_p,
      :object_freeze,
      :object_frozen_p,
      :fastctx_get_field,
      nil,
      :fixnum_right_shift,
      :fixnum_left_shift,
      :vm_stats,
      :nmethod_call,
      :load_library,
      :dir_glob,
      :dir_chdir,
      :float_sprintf,
      :make_weak_ref,
      :fastctx_set_field,
      :fastctx_dup,
      :gc_collect_references,
      :task_dup,
      :task_set_current,
      :task_associate,
      :task_current,
      :task_at,
      :channel_new,
      :channel_send,
      :channel_receive,
      :thread_new,
      :thread_run,
      :thread_current,
      :thread_schedule,
      :thread_yield,
      :object_become,
      :channel_send_in_microseconds,
      :channel_send_on_readable,
      :channel_send_on_writable,
      :channel_send_on_signal,
      :channel_receive_many,
      :sampler_activate,
      :sampler_stop,
      :replace_process,
      :fork_process,
      :channel_send_on_stopped,
      :io_reopen,
      :hash_value_set,
      :ivar_set,
      :ivar_get,
      :ivars_get,
      :str_crypt,
      :nfunc_call,
      :nfunc_add,
      :nfunc_call_object,
      :env_get,
      :env_set,
      nil,
      :env_as_hash,
      :task_set_debugging,
      :mktime,
      :time_switch,
      :bignum_size,
      :reset_method_cache,
      :regexp_scan,
      :regexp_match_start
    ]

    FirstRuntimePrimitive = 1024

    RuntimePrimitives = [
      :set_ivar,
      :get_ivar,
      :set_index,
      :get_index,
      :dispatch_as_method
    ]
    
  end
end
