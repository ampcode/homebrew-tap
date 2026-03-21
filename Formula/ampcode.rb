class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1774067329-g91f10a"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1774067329-g91f10a/amp-darwin-arm64"
      sha256 "f88c28f0f9935747e89cd0b2c1f1a7ec7dca11699e59e5229badc0ff7b3300e9"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1774067329-g91f10a/amp-darwin-x64"
      sha256 "6387bbe0df102187f72531e8d7b4fd3de3d3930482f623669155e02b69541f38"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1774067329-g91f10a/amp-linux-arm64"
      sha256 "812204f9d166f66967b995f8735f8e94e3862711cf5b7f08a74285f8aadeebd4"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1774067329-g91f10a/amp-linux-x64"
      sha256 "b73bb8a2dccace1db13c75700821cce34774a941db8c444c10e5911747666ce8"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
