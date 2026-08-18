class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1787042460-ga335fc"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1787042460-ga335fc/amp-darwin-arm64"
      sha256 "020d0d0521ff78391e3606969536c719558d30734a991e3d267f69ce6fe01bfa"
    else
      url "https://static.ampcode.com/cli/0.0.1787042460-ga335fc/amp-darwin-x64"
      sha256 "7ab8e983ef683aed2bf643468a2b16549cc1c5ba59deb61976945fdb8d9aed10"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1787042460-ga335fc/amp-linux-arm64"
      sha256 "437a3af31c53bbb07571e9c3508f5b4d05d835b807e8cfb528637ee5ada3b756"
    else
      url "https://static.ampcode.com/cli/0.0.1787042460-ga335fc/amp-linux-x64"
      sha256 "7e62a38499d88ab8d67eb5a4c18681fafffab5b4e8d6de1e9e265ae7f7851472"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
