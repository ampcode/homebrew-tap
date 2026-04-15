class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1776236533-g7f99cb"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1776236533-g7f99cb/amp-darwin-arm64"
      sha256 "68994441745a1098bba5ddb832efbe45e75f4888c2bdb932e0090a045e94c3ee"
    else
      url "https://static.ampcode.com/cli/0.0.1776236533-g7f99cb/amp-darwin-x64"
      sha256 "59abc62d0fe99f4542f3691327983b3d1382874e15c12329d8ab636f58b793e2"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1776236533-g7f99cb/amp-linux-arm64"
      sha256 "f241d0b954b27a1eda1ea7de5179c231a062f2cd8c554f194e831441d8ee2166"
    else
      url "https://static.ampcode.com/cli/0.0.1776236533-g7f99cb/amp-linux-x64"
      sha256 "407d1a1974386a16242dd031396719f96ee3a9f0f3e8f4ccaecf59a10b5ce827"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
