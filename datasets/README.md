Schema: sample entry

```ts
export interface LeaderboardRanking {
  rank: number;
  athlete_id: number;
  velocity: number;
  elev_gain: number;
  num_activities: number;
  moving_time: number;
  distance: number;
  best_activities_distance: number;
  best_activities_distance_activity_id: number;
  athlete_firstname: string;
  athlete_lastname: string; // last initial for privacy
}
```

Generated using [MakeTypes](https://jvilk.com/MakeTypes/)
