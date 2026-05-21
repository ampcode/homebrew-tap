class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1779395458-ge0625c"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1779395458-ge0625c/amp-darwin-arm64"
      sha256 "41d223b303191bea1a507c26cb8fe8baf558c4f83a8118bcf1ea7a6278c789d0"
    else
      url "https://static.ampcode.com/cli/0.0.1779395458-ge0625c/amp-darwin-x64"
      sha256 "b92d1d5939aa23b24e74fb18a8f893b4dfbfda1f7e657abed2ccd7f38e8e0497"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1779395458-ge0625c/amp-linux-arm64"
      sha256 "210541646690976eeef278f709e8a8e7c62c154cbb278853a9535e54d80b418f"
    else
      url "https://static.ampcode.com/cli/0.0.1779395458-ge0625c/amp-linux-x64"
      sha256 "db74f0ba8525bc8f86511204e4c631521e159b62ed379c430d325fa302cc0dca"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
