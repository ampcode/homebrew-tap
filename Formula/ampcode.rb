class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1786588355-g17503c"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1786588355-g17503c/amp-darwin-arm64"
      sha256 "fcaf78598b486df1f6c42de6413ec83cc49d941372c48cad21fe0c986495bf25"
    else
      url "https://static.ampcode.com/cli/0.0.1786588355-g17503c/amp-darwin-x64"
      sha256 "572b170b38b473e6c095b64919d04a70a851f431006ba306f1a49a1a8e23e993"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1786588355-g17503c/amp-linux-arm64"
      sha256 "2846b3b97b0a13cf6530a7cdfe1a59c0dcd9c0d31e473f26c96f17801f6443a2"
    else
      url "https://static.ampcode.com/cli/0.0.1786588355-g17503c/amp-linux-x64"
      sha256 "ebd40a87d011035efb5ee6c7970d680a37556be7b72ac3125f577dfb2091868d"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
