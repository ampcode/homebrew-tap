class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1778577695-g97a828"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1778577695-g97a828/amp-darwin-arm64"
      sha256 "a12f937f2d5475ed70c2584c3aa233b50cfccae446a8f4872a8fd2b7d406a7dc"
    else
      url "https://static.ampcode.com/cli/0.0.1778577695-g97a828/amp-darwin-x64"
      sha256 "45d19629e72453f390fd73225469512e27f27afb24f5a5b51c702ddd9e479d56"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1778577695-g97a828/amp-linux-arm64"
      sha256 "a9dea95916cbbbf72ef802c40aaa36b5bdf9716d62bedc30f0b4c9e6f82b44cf"
    else
      url "https://static.ampcode.com/cli/0.0.1778577695-g97a828/amp-linux-x64"
      sha256 "c084b0d71dbd13e69de19485910971598836ed77cbbc7ab2cab93618843b9927"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
