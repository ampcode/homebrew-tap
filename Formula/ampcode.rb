class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1773838141-g10df93"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1773838141-g10df93/amp-darwin-arm64"
      sha256 "a2efcab9a37b8a6317eb8ced320a139d7fe0033fcdfb3458572663fd0baf321c"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1773838141-g10df93/amp-darwin-x64"
      sha256 "1c3e5660d9e64f78f4dd7ad45a120faf2928095efd9a07540c2248b336b433ce"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1773838141-g10df93/amp-linux-arm64"
      sha256 "674b43acf3b88abf48d8fab0747d4ecb7a40ef1ce40b13e3e73533417e4400fe"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1773838141-g10df93/amp-linux-x64"
      sha256 "34e23802ce76cb06f1347317789f2dce2bc915ec2204d8df80836bd74f779bf6"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
