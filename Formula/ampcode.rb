class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1794801642-g11f2f8"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1794801642-g11f2f8/amp-darwin-arm64"
      sha256 "b2381949b827481a6c734ef6bb26aaa61ec1977015167909b4767f58ede73e96"
    else
      url "https://static.ampcode.com/cli/0.0.1794801642-g11f2f8/amp-darwin-x64"
      sha256 "738994e0321d87bc124a1b7f0bf15cbc968933ad4d29bd23d1a1e023f78c2b19"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1794801642-g11f2f8/amp-linux-arm64"
      sha256 "e8bbf0f60c68ade07acfc584dbe80d5baa36fcd037c516d1614cb50403300b8b"
    else
      url "https://static.ampcode.com/cli/0.0.1794801642-g11f2f8/amp-linux-x64"
      sha256 "0c6c5df8c0e3b65c4d6f9a45314058b35493400b9f6421c80febf530e6b17333"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
