class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1782851652-gfd0e56"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1782851652-gfd0e56/amp-darwin-arm64"
      sha256 "cf75f4551351901e335f1e7cce6e6ed54aa59aff8caa7fe347960a3f74d532d7"
    else
      url "https://static.ampcode.com/cli/0.0.1782851652-gfd0e56/amp-darwin-x64"
      sha256 "efe08d65e003965de74cea6f948a6f13a9d5b13439087d901ab9150c3a851f03"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1782851652-gfd0e56/amp-linux-arm64"
      sha256 "83211555e87f4b6bec62e1d168b235e971e00a6317d35ffd611e05fc460ef510"
    else
      url "https://static.ampcode.com/cli/0.0.1782851652-gfd0e56/amp-linux-x64"
      sha256 "25f76c5f0c1f6eeaff33a0808ec8d1857c08cd443dfddf37c4598351ac95af0c"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
