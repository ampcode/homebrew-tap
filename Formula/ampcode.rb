class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1791820856-ge18b68"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1791820856-ge18b68/amp-darwin-arm64"
      sha256 "78c99f1afe0aeeb1e4588805686cc9285ce72be80de824c68d5e450b6ee2e930"
    else
      url "https://static.ampcode.com/cli/0.0.1791820856-ge18b68/amp-darwin-x64"
      sha256 "eb05a0425b73c20360f7ee25a3a7e5831bed7a8e65c389de196ce6885ab4c15e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1791820856-ge18b68/amp-linux-arm64"
      sha256 "59c8e60d60ba96af301f38fc0559f8c573c5fcc7ac89e038feec35c3cebd275e"
    else
      url "https://static.ampcode.com/cli/0.0.1791820856-ge18b68/amp-linux-x64"
      sha256 "9e7c42e5cbde7bba48967d8dd9813ff79204992097550bbef0a27095d342f61d"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
