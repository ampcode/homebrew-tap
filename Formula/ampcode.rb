class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1789848041-gfc88c5"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1789848041-gfc88c5/amp-darwin-arm64"
      sha256 "90bd6d492aedf43f9beccd017064f97bffe41271d34a0117024ba587d7c58077"
    else
      url "https://static.ampcode.com/cli/0.0.1789848041-gfc88c5/amp-darwin-x64"
      sha256 "bf8c60363c2ef1eadf20fedba082aa7844acaa8534009c3cd0b5e8173c421f48"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1789848041-gfc88c5/amp-linux-arm64"
      sha256 "4c74780cf42adf357328d920bd46fc8b2eba9a6155a31ed3741e173db077b9b8"
    else
      url "https://static.ampcode.com/cli/0.0.1789848041-gfc88c5/amp-linux-x64"
      sha256 "10fcc183206bf963552b96ae5cbca70aa82b7031bba7f102f5fcf4f21704bb80"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
