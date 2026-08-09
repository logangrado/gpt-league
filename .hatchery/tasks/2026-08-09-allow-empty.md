# Task: allow-empty

**Status**: in-progress
**Branch**: (none — no-worktree mode)
**Created**: 2026-08-09 09:28

## Objective

We need to allow empty scoring configs (like 26-2.jsonnet).

The CI will add races as they are run.

Currently we get this error:

Traceback (most recent call last):
  File "/Users/grado/Code/projects/gpt-league/.venv/bin/gpt-scoring", line 10, in <module>
    sys.exit(cli())
             ^^^^^
  File "/Users/grado/Code/projects/gpt-league/.venv/lib/python3.12/site-packages/click/core.py", line 1485, in __call__
    return self.main(*args, **kwargs)
           ^^^^^^^^^^^^^^^^^^^^^^^^^^
  File "/Users/grado/Code/projects/gpt-league/.venv/lib/python3.12/site-packages/click/core.py", line 1406, in main
    rv = self.invoke(ctx)
         ^^^^^^^^^^^^^^^^
  File "/Users/grado/Code/projects/gpt-league/.venv/lib/python3.12/site-packages/click/core.py", line 1873, in invoke
    return _process_result(sub_ctx.command.invoke(sub_ctx))
                           ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
  File "/Users/grado/Code/projects/gpt-league/.venv/lib/python3.12/site-packages/click/core.py", line 1269, in invoke
    return ctx.invoke(self.callback, **ctx.params)
           ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
  File "/Users/grado/Code/projects/gpt-league/.venv/lib/python3.12/site-packages/click/core.py", line 824, in invoke
    return callback(*args, **kwargs)
           ^^^^^^^^^^^^^^^^^^^^^^^^^
  File "/Users/grado/Code/projects/gpt-league/.venv/lib/python3.12/site-packages/gpt_racing/cli/core.py", line 149, in core
    core_entrypoint(config, out_path)
  File "/Users/grado/Code/projects/gpt-league/.venv/lib/python3.12/site-packages/gpt_racing/cli/core.py", line 53, in core_entrypoint
    out = core.compute_ratings(config, client)
          ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
  File "/Users/grado/Code/projects/gpt-league/.venv/lib/python3.12/site-packages/gpt_racing/core.py", line 170, in compute_ratings
    result_df, name_df = _load_race_data(config.races, client)
                         ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
  File "/Users/grado/Code/projects/gpt-league/.venv/lib/python3.12/site-packages/gpt_racing/core.py", line 122, in _load_race_data
    result_df = pl.concat(result_dfs)
                ^^^^^^^^^^^^^^^^^^^^^
  File "/Users/grado/Code/projects/gpt-league/.venv/lib/python3.12/site-packages/polars/functions/eager.py", line 176, in concat
    raise ValueError(msg)
ValueError: cannot concat empty list


Update the scoring code to:
- allow configs that are empty
- if you try to run on an empty config, it just prints and returns, no error

## Agreed Plan

*(To be filled in after planning discussion)*

## Progress Log

*(Steps will appear here once the plan is agreed)*

## Summary

*(Fill in on completion — then remove Agreed Plan and Progress Log above.
Cover: key decisions made, patterns established, files changed, gotchas,
and anything a future agent working in this repo should know.)*
