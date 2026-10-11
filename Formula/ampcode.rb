class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1791676897-g77c125"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1791676897-g77c125/amp-darwin-arm64"
      sha256 "107c8b2c312e97447bd20d9f7d678d477195bd330753de81749b547bc7477f44"
    else
      url "https://static.ampcode.com/cli/0.0.1791676897-g77c125/amp-darwin-x64"
      sha256 "7e99fec7bfd68613cd73fe08f65abc4a9893ca5fff96e3a0d0d07905124dcc06"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1791676897-g77c125/amp-linux-arm64"
      sha256 "e3c09ad066d3970df6ecc178393a7d70257db66ef245c80892142242073b01f0"
    else
      url "https://static.ampcode.com/cli/0.0.1791676897-g77c125/amp-linux-x64"
      sha256 "6c1b791d8e2c4661460b96276860c289d50ff0cacadaf1061ccb401295792036"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
