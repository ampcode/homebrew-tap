class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1782352550-g22f8e4"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1782352550-g22f8e4/amp-darwin-arm64"
      sha256 "a4710195e9ac62dbe2dfd487e3c0329ba8fea3fd40da43fd4fe40ea7320fd2b7"
    else
      url "https://static.ampcode.com/cli/0.0.1782352550-g22f8e4/amp-darwin-x64"
      sha256 "0c08ceaabbdf4ad01bfc35705d2f50de593c8fa35adb205ca1aeb48f0af5aef3"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1782352550-g22f8e4/amp-linux-arm64"
      sha256 "dfdf3586180ddb8057df5d9e9f2ef62cfcea21ff1fc0e9c077a2975798f374cc"
    else
      url "https://static.ampcode.com/cli/0.0.1782352550-g22f8e4/amp-linux-x64"
      sha256 "cde873153f90fc5ea0624ff06d4a32e5d1848a75b352f991a24335e909176067"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
