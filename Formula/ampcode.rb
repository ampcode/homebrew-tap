class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1783660582-g392d1a"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1783660582-g392d1a/amp-darwin-arm64"
      sha256 "4f52266449a05bd9c3f6dfa37857dd5ee6eee6f5b0911af73a0cec15c2013b0f"
    else
      url "https://static.ampcode.com/cli/0.0.1783660582-g392d1a/amp-darwin-x64"
      sha256 "13fbc0ce7d38aed53fa5751f507bd62aa1868ebf884f32614ae9ea1996bf4ee7"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1783660582-g392d1a/amp-linux-arm64"
      sha256 "47a6d9eaf49f1d539e2ea444dc8b844109ae3fefd94ad1024c4ea795a29aabfc"
    else
      url "https://static.ampcode.com/cli/0.0.1783660582-g392d1a/amp-linux-x64"
      sha256 "1024baf78af54662fbd8cfd1d30cabf8890ae83334087ed08c2330d17464a8a6"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
