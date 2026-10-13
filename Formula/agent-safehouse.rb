# Mirrored from eugene1g/homebrew-safehouse (Formula/agent-safehouse.rb) so that
# mise can manage it: mise requires tapped formulae to publish API metadata at
# api/formula/<token>.json and will not proxy to the brew CLI.
# Upstream: https://github.com/eugene1g/homebrew-safehouse
class AgentSafehouse < Formula
  desc "macOS sandbox wrapper for coding agents"
  homepage "https://github.com/eugene1g/agent-safehouse"
  url "https://github.com/eugene1g/agent-safehouse/releases/download/v0.12.0/safehouse.sh"
  version "0.12.0"
  sha256 "6298e4c8e8c0668bd2f79d8f8da7f605071c0b1f15328f263304783db6fe2829"
  license "Apache-2.0"
  head "https://github.com/eugene1g/agent-safehouse.git", branch: "main"

  def install
    artifact_path = build.head? ? "dist/safehouse.sh" : "safehouse.sh"
    bin.install artifact_path => "safehouse"
  end

  test do
    assert_match "(version 1)", shell_output("#{bin}/safehouse --stdout")
  end
end