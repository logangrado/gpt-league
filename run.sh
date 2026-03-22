#!/usr/bin/env sh

uv run gpt-scoring run configs/gpt/26-1.jsonnet ./out && tar -czf ./out/out.tar.gz out && open ./out
