class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1778891885-g77043d"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1778891885-g77043d/amp-darwin-arm64"
      sha256 "284fa7b8d994f8f9112c15a9182a0e4a99f30f2ee57d9480634045dda6275f7c"
    else
      url "https://static.ampcode.com/cli/0.0.1778891885-g77043d/amp-darwin-x64"
      sha256 "f3713c89fbedbd5e52e4df43b80a32a4826a7e2d4acb64626eaf99ea7588e073"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1778891885-g77043d/amp-linux-arm64"
      sha256 "80f175002ff82d60310a059bfa9746e6ecbb98fa602cc4d6ee921e6b75fa975a"
    else
      url "https://static.ampcode.com/cli/0.0.1778891885-g77043d/amp-linux-x64"
      sha256 "4d751ef21c5acf6ede98a75a0ae6e5062c2a32983f7f9c271044c1302b8a70f4"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
