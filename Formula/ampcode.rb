class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1771171343-gd84e58"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1771171343-gd84e58/amp-darwin-arm64"
      sha256 "6e6d5ae7892542c7666bf00acc507274a4e99fc383147260c746ca28131731b8"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1771171343-gd84e58/amp-darwin-x64"
      sha256 "408839994809171c236f9dfd97282b6daeda791823f328e75b3479cb89dc77ba"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1771171343-gd84e58/amp-linux-arm64"
      sha256 "64a7487769c2516e2f6b3daf30aea31cce18835a596d2d7dd5f05f8f4397543c"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1771171343-gd84e58/amp-linux-x64"
      sha256 "daa21843ee20f9f762955d94ede65af145cd7bd5adc79ed40bc4a5a549e72d52"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
