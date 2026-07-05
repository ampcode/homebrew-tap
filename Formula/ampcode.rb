class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1783282957-g66f800"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1783282957-g66f800/amp-darwin-arm64"
      sha256 "1423397b25cad8393624ad771d65ca02af13e27a96e504317dc100d4b0c76638"
    else
      url "https://static.ampcode.com/cli/0.0.1783282957-g66f800/amp-darwin-x64"
      sha256 "20630c48324fad06731a2f1295b4f9a5cd3bc7b62123a2afafb74ad50a2d79f6"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1783282957-g66f800/amp-linux-arm64"
      sha256 "efdb5367b4cd56d060ec4376bc41f305c48c41617edeae79e47aa301337887ec"
    else
      url "https://static.ampcode.com/cli/0.0.1783282957-g66f800/amp-linux-x64"
      sha256 "94920f14fd22ca5624c42e61a3fde18ed0ec4661a547548c4149d597f6fa06a7"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
