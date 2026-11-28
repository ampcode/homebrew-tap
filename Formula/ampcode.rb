class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1795852840-ga90fca"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1795852840-ga90fca/amp-darwin-arm64"
      sha256 "211b440213c57accef28ddd4a3f4490807e388c6243bae501de564a612f52c11"
    else
      url "https://static.ampcode.com/cli/0.0.1795852840-ga90fca/amp-darwin-x64"
      sha256 "e4d784debcbac7e164c6ef7ced4335c05ded471159b175bf83523338661649aa"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1795852840-ga90fca/amp-linux-arm64"
      sha256 "ed8335f946eb8bf8e47bddd0ddffe46864adc808ab1b275baddd70f4f35e3116"
    else
      url "https://static.ampcode.com/cli/0.0.1795852840-ga90fca/amp-linux-x64"
      sha256 "851105e113720a85103909b85f54342dee160d4c55059819dffce55343420ded"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
