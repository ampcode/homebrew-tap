class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1779886645-g59fcb2"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1779886645-g59fcb2/amp-darwin-arm64"
      sha256 "d8ec479c0d811cb0d6dc97c3baff0ae5d5ad89804b249cb7e83638caf1f9f1ea"
    else
      url "https://static.ampcode.com/cli/0.0.1779886645-g59fcb2/amp-darwin-x64"
      sha256 "8d86d23a62c52ad6d6186e8f77d613d4b3161b1ead900c308ff374569ae3456f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1779886645-g59fcb2/amp-linux-arm64"
      sha256 "b7cb507e03a43e15a0f8b36df1cdd9dc7bb46efc2105ba86f93b95580fe88e94"
    else
      url "https://static.ampcode.com/cli/0.0.1779886645-g59fcb2/amp-linux-x64"
      sha256 "e9ef8bc818165158a36eb3703d17152c6ea450cabc7f6469c8f7bb36fda38a11"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
